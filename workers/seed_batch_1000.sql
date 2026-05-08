INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-221', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-08T17:38:35.000Z', '2025-11-08T17:38:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-221-1', 'hist-ticket-9-221', 'prod-latte', 1, 15000, 0, '2025-11-08T17:38:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-221', 'hist-ticket-9-221', 'cash', 15000, 'completed', '2025-11-08T17:38:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-222', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-08T15:30:04.000Z', '2025-11-08T15:30:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-222-1', 'hist-ticket-9-222', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T15:30:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-222-2', 'hist-ticket-9-222', 'prod-mocha', 1, 16500, 0, '2025-11-08T15:30:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-222-3', 'hist-ticket-9-222', 'prod-mocha', 1, 16500, 0, '2025-11-08T15:30:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-222', 'hist-ticket-9-222', 'cash', 47500, 'completed', '2025-11-08T15:30:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-223', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2025-11-08T19:46:27.000Z', '2025-11-08T19:46:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-223-1', 'hist-ticket-9-223', 'prod-latte', 1, 15000, 0, '2025-11-08T19:46:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-223', 'hist-ticket-9-223', 'cash', 15000, 'completed', '2025-11-08T19:46:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-224', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-08T19:02:18.000Z', '2025-11-08T19:02:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-224-1', 'hist-ticket-9-224', 'prod-mocha', 1, 16500, 0, '2025-11-08T19:02:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-224-2', 'hist-ticket-9-224', 'prod-mocha', 1, 16500, 0, '2025-11-08T19:02:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-224-3', 'hist-ticket-9-224', 'prod-americano', 1, 12000, 0, '2025-11-08T19:02:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-224', 'hist-ticket-9-224', 'cash', 45000, 'completed', '2025-11-08T19:02:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-225', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-08T19:28:15.000Z', '2025-11-08T19:28:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-225-1', 'hist-ticket-9-225', 'prod-mocha', 1, 16500, 0, '2025-11-08T19:28:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-225-2', 'hist-ticket-9-225', 'prod-mocha', 1, 16500, 0, '2025-11-08T19:28:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-225', 'hist-ticket-9-225', 'cash', 33000, 'completed', '2025-11-08T19:28:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-226', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-08T10:14:20.000Z', '2025-11-08T10:14:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-226-1', 'hist-ticket-9-226', 'prod-mocha', 1, 16500, 0, '2025-11-08T10:14:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-226-2', 'hist-ticket-9-226', 'prod-latte', 1, 15000, 0, '2025-11-08T10:14:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-226', 'hist-ticket-9-226', 'cash', 31500, 'completed', '2025-11-08T10:14:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-227', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-08T13:31:06.000Z', '2025-11-08T13:31:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-227-1', 'hist-ticket-9-227', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T13:31:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-227', 'hist-ticket-9-227', 'cash', 14500, 'completed', '2025-11-08T13:31:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-228', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-11-08T10:54:27.000Z', '2025-11-08T10:54:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-228-1', 'hist-ticket-9-228', 'prod-americano', 1, 12000, 0, '2025-11-08T10:54:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-228', 'hist-ticket-9-228', 'cash', 12000, 'completed', '2025-11-08T10:54:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-229', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-08T11:57:14.000Z', '2025-11-08T11:57:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-229-1', 'hist-ticket-9-229', 'prod-americano', 1, 12000, 0, '2025-11-08T11:57:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-229-2', 'hist-ticket-9-229', 'prod-latte', 1, 15000, 0, '2025-11-08T11:57:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-229-3', 'hist-ticket-9-229', 'prod-latte', 1, 15000, 0, '2025-11-08T11:57:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-229-4', 'hist-ticket-9-229', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T11:57:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-229', 'hist-ticket-9-229', 'cash', 56500, 'completed', '2025-11-08T11:57:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-230', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-08T17:25:56.000Z', '2025-11-08T17:25:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-230-1', 'hist-ticket-9-230', 'prod-mocha', 1, 16500, 0, '2025-11-08T17:25:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-230', 'hist-ticket-9-230', 'cash', 16500, 'completed', '2025-11-08T17:25:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-231', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-08T14:25:31.000Z', '2025-11-08T14:25:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-231-1', 'hist-ticket-9-231', 'prod-americano', 1, 12000, 0, '2025-11-08T14:25:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-231-2', 'hist-ticket-9-231', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T14:25:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-231-3', 'hist-ticket-9-231', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T14:25:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-231', 'hist-ticket-9-231', 'cash', 41000, 'completed', '2025-11-08T14:25:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-232', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2025-11-08T15:18:13.000Z', '2025-11-08T15:18:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-232-1', 'hist-ticket-9-232', 'prod-americano', 1, 12000, 0, '2025-11-08T15:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-232-2', 'hist-ticket-9-232', 'prod-mocha', 1, 16500, 0, '2025-11-08T15:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-232-3', 'hist-ticket-9-232', 'prod-mocha', 1, 16500, 0, '2025-11-08T15:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-232-4', 'hist-ticket-9-232', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T15:18:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-232', 'hist-ticket-9-232', 'cash', 59500, 'completed', '2025-11-08T15:18:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-233', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-08T19:35:20.000Z', '2025-11-08T19:35:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-233-1', 'hist-ticket-9-233', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T19:35:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-233-2', 'hist-ticket-9-233', 'prod-latte', 1, 15000, 0, '2025-11-08T19:35:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-233-3', 'hist-ticket-9-233', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T19:35:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-233-4', 'hist-ticket-9-233', 'prod-latte', 1, 15000, 0, '2025-11-08T19:35:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-233', 'hist-ticket-9-233', 'cash', 59000, 'completed', '2025-11-08T19:35:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-234', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-08T08:55:00.000Z', '2025-11-08T08:55:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-234-1', 'hist-ticket-9-234', 'prod-mocha', 1, 16500, 0, '2025-11-08T08:55:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-234', 'hist-ticket-9-234', 'cash', 16500, 'completed', '2025-11-08T08:55:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-235', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-08T18:19:43.000Z', '2025-11-08T18:19:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-235-1', 'hist-ticket-9-235', 'prod-americano', 1, 12000, 0, '2025-11-08T18:19:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-235-2', 'hist-ticket-9-235', 'prod-latte', 1, 15000, 0, '2025-11-08T18:19:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-235', 'hist-ticket-9-235', 'cash', 27000, 'completed', '2025-11-08T18:19:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-236', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-08T15:53:41.000Z', '2025-11-08T15:53:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-236-1', 'hist-ticket-9-236', 'prod-mocha', 1, 16500, 0, '2025-11-08T15:53:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-236-2', 'hist-ticket-9-236', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T15:53:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-236-3', 'hist-ticket-9-236', 'prod-mocha', 1, 16500, 0, '2025-11-08T15:53:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-236-4', 'hist-ticket-9-236', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T15:53:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-236', 'hist-ticket-9-236', 'cash', 62000, 'completed', '2025-11-08T15:53:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-237', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-08T14:44:28.000Z', '2025-11-08T14:44:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-237-1', 'hist-ticket-9-237', 'prod-latte', 1, 15000, 0, '2025-11-08T14:44:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-237-2', 'hist-ticket-9-237', 'prod-mocha', 1, 16500, 0, '2025-11-08T14:44:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-237-3', 'hist-ticket-9-237', 'prod-latte', 1, 15000, 0, '2025-11-08T14:44:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-237', 'hist-ticket-9-237', 'cash', 46500, 'completed', '2025-11-08T14:44:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-238', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-08T09:09:32.000Z', '2025-11-08T09:09:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-238-1', 'hist-ticket-9-238', 'prod-americano', 1, 12000, 0, '2025-11-08T09:09:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-238', 'hist-ticket-9-238', 'cash', 12000, 'completed', '2025-11-08T09:09:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-239', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2025-11-08T10:09:10.000Z', '2025-11-08T10:09:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-239-1', 'hist-ticket-9-239', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T10:09:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-239-2', 'hist-ticket-9-239', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T10:09:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-239-3', 'hist-ticket-9-239', 'prod-latte', 1, 15000, 0, '2025-11-08T10:09:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-239', 'hist-ticket-9-239', 'cash', 44000, 'completed', '2025-11-08T10:09:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-240', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2025-11-08T11:00:05.000Z', '2025-11-08T11:00:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-240-1', 'hist-ticket-9-240', 'prod-americano', 1, 12000, 0, '2025-11-08T11:00:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-240', 'hist-ticket-9-240', 'cash', 12000, 'completed', '2025-11-08T11:00:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-241', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-08T12:38:41.000Z', '2025-11-08T12:38:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-241-1', 'hist-ticket-9-241', 'prod-mocha', 1, 16500, 0, '2025-11-08T12:38:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-241-2', 'hist-ticket-9-241', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T12:38:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-241-3', 'hist-ticket-9-241', 'prod-latte', 1, 15000, 0, '2025-11-08T12:38:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-241-4', 'hist-ticket-9-241', 'prod-latte', 1, 15000, 0, '2025-11-08T12:38:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-241', 'hist-ticket-9-241', 'cash', 61000, 'completed', '2025-11-08T12:38:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-242', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-09T11:42:26.000Z', '2025-11-09T11:42:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-242-1', 'hist-ticket-10-242', 'prod-mocha', 1, 16500, 0, '2025-11-09T11:42:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-242', 'hist-ticket-10-242', 'cash', 16500, 'completed', '2025-11-09T11:42:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-243', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-09T09:46:54.000Z', '2025-11-09T09:46:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-243-1', 'hist-ticket-10-243', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T09:46:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-243-2', 'hist-ticket-10-243', 'prod-latte', 1, 15000, 0, '2025-11-09T09:46:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-243', 'hist-ticket-10-243', 'cash', 29500, 'completed', '2025-11-09T09:46:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-244', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2025-11-09T19:45:11.000Z', '2025-11-09T19:45:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-244-1', 'hist-ticket-10-244', 'prod-mocha', 1, 16500, 0, '2025-11-09T19:45:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-244', 'hist-ticket-10-244', 'cash', 16500, 'completed', '2025-11-09T19:45:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-245', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-09T10:17:07.000Z', '2025-11-09T10:17:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-245-1', 'hist-ticket-10-245', 'prod-mocha', 1, 16500, 0, '2025-11-09T10:17:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-245', 'hist-ticket-10-245', 'cash', 16500, 'completed', '2025-11-09T10:17:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-246', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-09T08:53:31.000Z', '2025-11-09T08:53:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-246-1', 'hist-ticket-10-246', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T08:53:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-246-2', 'hist-ticket-10-246', 'prod-mocha', 1, 16500, 0, '2025-11-09T08:53:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-246-3', 'hist-ticket-10-246', 'prod-latte', 1, 15000, 0, '2025-11-09T08:53:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-246', 'hist-ticket-10-246', 'cash', 46000, 'completed', '2025-11-09T08:53:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-247', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-09T18:13:00.000Z', '2025-11-09T18:13:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-247-1', 'hist-ticket-10-247', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T18:13:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-247', 'hist-ticket-10-247', 'cash', 14500, 'completed', '2025-11-09T18:13:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-248', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-09T12:02:06.000Z', '2025-11-09T12:02:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-248-1', 'hist-ticket-10-248', 'prod-mocha', 1, 16500, 0, '2025-11-09T12:02:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-248-2', 'hist-ticket-10-248', 'prod-mocha', 1, 16500, 0, '2025-11-09T12:02:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-248-3', 'hist-ticket-10-248', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T12:02:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-248', 'hist-ticket-10-248', 'cash', 47500, 'completed', '2025-11-09T12:02:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-249', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-09T11:03:23.000Z', '2025-11-09T11:03:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-249-1', 'hist-ticket-10-249', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T11:03:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-249-2', 'hist-ticket-10-249', 'prod-americano', 1, 12000, 0, '2025-11-09T11:03:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-249', 'hist-ticket-10-249', 'cash', 26500, 'completed', '2025-11-09T11:03:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-250', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-09T12:15:20.000Z', '2025-11-09T12:15:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-250-1', 'hist-ticket-10-250', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T12:15:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-250-2', 'hist-ticket-10-250', 'prod-americano', 1, 12000, 0, '2025-11-09T12:15:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-250', 'hist-ticket-10-250', 'cash', 26500, 'completed', '2025-11-09T12:15:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-251', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-09T18:05:20.000Z', '2025-11-09T18:05:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-251-1', 'hist-ticket-10-251', 'prod-latte', 1, 15000, 0, '2025-11-09T18:05:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-251', 'hist-ticket-10-251', 'cash', 15000, 'completed', '2025-11-09T18:05:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-252', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-09T14:34:34.000Z', '2025-11-09T14:34:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-252-1', 'hist-ticket-10-252', 'prod-americano', 1, 12000, 0, '2025-11-09T14:34:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-252', 'hist-ticket-10-252', 'cash', 12000, 'completed', '2025-11-09T14:34:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-253', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-09T09:13:07.000Z', '2025-11-09T09:13:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-253-1', 'hist-ticket-10-253', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T09:13:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-253-2', 'hist-ticket-10-253', 'prod-latte', 1, 15000, 0, '2025-11-09T09:13:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-253-3', 'hist-ticket-10-253', 'prod-americano', 1, 12000, 0, '2025-11-09T09:13:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-253', 'hist-ticket-10-253', 'cash', 41500, 'completed', '2025-11-09T09:13:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-254', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-09T15:28:44.000Z', '2025-11-09T15:28:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-254-1', 'hist-ticket-10-254', 'prod-mocha', 1, 16500, 0, '2025-11-09T15:28:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-254-2', 'hist-ticket-10-254', 'prod-americano', 1, 12000, 0, '2025-11-09T15:28:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-254-3', 'hist-ticket-10-254', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T15:28:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-254-4', 'hist-ticket-10-254', 'prod-mocha', 1, 16500, 0, '2025-11-09T15:28:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-254', 'hist-ticket-10-254', 'cash', 59500, 'completed', '2025-11-09T15:28:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-255', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-09T09:50:51.000Z', '2025-11-09T09:50:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-255-1', 'hist-ticket-10-255', 'prod-mocha', 1, 16500, 0, '2025-11-09T09:50:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-255-2', 'hist-ticket-10-255', 'prod-mocha', 1, 16500, 0, '2025-11-09T09:50:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-255-3', 'hist-ticket-10-255', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T09:50:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-255-4', 'hist-ticket-10-255', 'prod-americano', 1, 12000, 0, '2025-11-09T09:50:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-255', 'hist-ticket-10-255', 'cash', 59500, 'completed', '2025-11-09T09:50:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-256', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2025-11-09T12:02:46.000Z', '2025-11-09T12:02:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-256-1', 'hist-ticket-10-256', 'prod-americano', 1, 12000, 0, '2025-11-09T12:02:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-256-2', 'hist-ticket-10-256', 'prod-americano', 1, 12000, 0, '2025-11-09T12:02:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-256', 'hist-ticket-10-256', 'cash', 24000, 'completed', '2025-11-09T12:02:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-257', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2025-11-09T12:45:05.000Z', '2025-11-09T12:45:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-257-1', 'hist-ticket-10-257', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T12:45:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-257-2', 'hist-ticket-10-257', 'prod-americano', 1, 12000, 0, '2025-11-09T12:45:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-257-3', 'hist-ticket-10-257', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T12:45:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-257', 'hist-ticket-10-257', 'cash', 41000, 'completed', '2025-11-09T12:45:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-258', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-09T18:25:18.000Z', '2025-11-09T18:25:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-258-1', 'hist-ticket-10-258', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T18:25:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-258', 'hist-ticket-10-258', 'cash', 14500, 'completed', '2025-11-09T18:25:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-259', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-09T15:27:27.000Z', '2025-11-09T15:27:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-259-1', 'hist-ticket-10-259', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T15:27:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-259-2', 'hist-ticket-10-259', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T15:27:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-259-3', 'hist-ticket-10-259', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T15:27:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-259-4', 'hist-ticket-10-259', 'prod-americano', 1, 12000, 0, '2025-11-09T15:27:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-259', 'hist-ticket-10-259', 'cash', 55500, 'completed', '2025-11-09T15:27:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-260', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-09T12:09:44.000Z', '2025-11-09T12:09:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-260-1', 'hist-ticket-10-260', 'prod-mocha', 1, 16500, 0, '2025-11-09T12:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-260-2', 'hist-ticket-10-260', 'prod-mocha', 1, 16500, 0, '2025-11-09T12:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-260-3', 'hist-ticket-10-260', 'prod-latte', 1, 15000, 0, '2025-11-09T12:09:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-260', 'hist-ticket-10-260', 'cash', 48000, 'completed', '2025-11-09T12:09:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-261', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-09T08:39:50.000Z', '2025-11-09T08:39:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-261-1', 'hist-ticket-10-261', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T08:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-261-2', 'hist-ticket-10-261', 'prod-latte', 1, 15000, 0, '2025-11-09T08:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-261-3', 'hist-ticket-10-261', 'prod-latte', 1, 15000, 0, '2025-11-09T08:39:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-261', 'hist-ticket-10-261', 'cash', 44500, 'completed', '2025-11-09T08:39:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-262', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-09T13:08:37.000Z', '2025-11-09T13:08:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-262-1', 'hist-ticket-10-262', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T13:08:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-262-2', 'hist-ticket-10-262', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T13:08:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-262', 'hist-ticket-10-262', 'cash', 29000, 'completed', '2025-11-09T13:08:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-263', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2025-11-09T15:10:26.000Z', '2025-11-09T15:10:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-263-1', 'hist-ticket-10-263', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T15:10:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-263-2', 'hist-ticket-10-263', 'prod-latte', 1, 15000, 0, '2025-11-09T15:10:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-263-3', 'hist-ticket-10-263', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T15:10:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-263-4', 'hist-ticket-10-263', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T15:10:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-263', 'hist-ticket-10-263', 'cash', 58500, 'completed', '2025-11-09T15:10:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-264', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2025-11-09T12:06:45.000Z', '2025-11-09T12:06:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-264-1', 'hist-ticket-10-264', 'prod-americano', 1, 12000, 0, '2025-11-09T12:06:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-264', 'hist-ticket-10-264', 'cash', 12000, 'completed', '2025-11-09T12:06:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-265', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-11-09T12:14:02.000Z', '2025-11-09T12:14:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-265-1', 'hist-ticket-10-265', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T12:14:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-265-2', 'hist-ticket-10-265', 'prod-latte', 1, 15000, 0, '2025-11-09T12:14:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-265-3', 'hist-ticket-10-265', 'prod-mocha', 1, 16500, 0, '2025-11-09T12:14:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-265', 'hist-ticket-10-265', 'cash', 46000, 'completed', '2025-11-09T12:14:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-266', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-09T16:12:19.000Z', '2025-11-09T16:12:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-266-1', 'hist-ticket-10-266', 'prod-americano', 1, 12000, 0, '2025-11-09T16:12:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-266', 'hist-ticket-10-266', 'cash', 12000, 'completed', '2025-11-09T16:12:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-267', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2025-11-09T15:39:25.000Z', '2025-11-09T15:39:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-267-1', 'hist-ticket-10-267', 'prod-mocha', 1, 16500, 0, '2025-11-09T15:39:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-267', 'hist-ticket-10-267', 'cash', 16500, 'completed', '2025-11-09T15:39:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-268', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-09T19:33:34.000Z', '2025-11-09T19:33:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-268-1', 'hist-ticket-10-268', 'prod-latte', 1, 15000, 0, '2025-11-09T19:33:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-268-2', 'hist-ticket-10-268', 'prod-americano', 1, 12000, 0, '2025-11-09T19:33:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-268-3', 'hist-ticket-10-268', 'prod-mocha', 1, 16500, 0, '2025-11-09T19:33:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-268-4', 'hist-ticket-10-268', 'prod-mocha', 1, 16500, 0, '2025-11-09T19:33:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-268', 'hist-ticket-10-268', 'cash', 60000, 'completed', '2025-11-09T19:33:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-269', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-11-09T19:45:29.000Z', '2025-11-09T19:45:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-269-1', 'hist-ticket-10-269', 'prod-mocha', 1, 16500, 0, '2025-11-09T19:45:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-269-2', 'hist-ticket-10-269', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T19:45:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-269-3', 'hist-ticket-10-269', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T19:45:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-269-4', 'hist-ticket-10-269', 'prod-mocha', 1, 16500, 0, '2025-11-09T19:45:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-269', 'hist-ticket-10-269', 'cash', 62000, 'completed', '2025-11-09T19:45:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-10-270', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-09T12:57:30.000Z', '2025-11-09T12:57:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-270-1', 'hist-ticket-10-270', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T12:57:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-270-2', 'hist-ticket-10-270', 'prod-cappuccino', 1, 14500, 0, '2025-11-09T12:57:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-270-3', 'hist-ticket-10-270', 'prod-americano', 1, 12000, 0, '2025-11-09T12:57:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-10-270-4', 'hist-ticket-10-270', 'prod-latte', 1, 15000, 0, '2025-11-09T12:57:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-10-270', 'hist-ticket-10-270', 'cash', 56000, 'completed', '2025-11-09T12:57:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-271', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-10T19:29:34.000Z', '2025-11-10T19:29:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-271-1', 'hist-ticket-11-271', 'prod-mocha', 1, 16500, 0, '2025-11-10T19:29:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-271', 'hist-ticket-11-271', 'cash', 16500, 'completed', '2025-11-10T19:29:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-272', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-10T11:12:41.000Z', '2025-11-10T11:12:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-272-1', 'hist-ticket-11-272', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T11:12:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-272-2', 'hist-ticket-11-272', 'prod-mocha', 1, 16500, 0, '2025-11-10T11:12:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-272', 'hist-ticket-11-272', 'cash', 31000, 'completed', '2025-11-10T11:12:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-273', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-10T11:58:31.000Z', '2025-11-10T11:58:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-273-1', 'hist-ticket-11-273', 'prod-americano', 1, 12000, 0, '2025-11-10T11:58:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-273', 'hist-ticket-11-273', 'cash', 12000, 'completed', '2025-11-10T11:58:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-274', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-10T19:04:57.000Z', '2025-11-10T19:04:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-274-1', 'hist-ticket-11-274', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T19:04:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-274-2', 'hist-ticket-11-274', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T19:04:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-274', 'hist-ticket-11-274', 'cash', 29000, 'completed', '2025-11-10T19:04:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-275', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-10T13:40:00.000Z', '2025-11-10T13:40:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-275-1', 'hist-ticket-11-275', 'prod-mocha', 1, 16500, 0, '2025-11-10T13:40:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-275-2', 'hist-ticket-11-275', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T13:40:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-275', 'hist-ticket-11-275', 'cash', 31000, 'completed', '2025-11-10T13:40:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-276', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-10T11:12:40.000Z', '2025-11-10T11:12:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-276-1', 'hist-ticket-11-276', 'prod-latte', 1, 15000, 0, '2025-11-10T11:12:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-276', 'hist-ticket-11-276', 'cash', 15000, 'completed', '2025-11-10T11:12:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-277', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-10T17:38:59.000Z', '2025-11-10T17:38:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-277-1', 'hist-ticket-11-277', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T17:38:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-277-2', 'hist-ticket-11-277', 'prod-latte', 1, 15000, 0, '2025-11-10T17:38:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-277-3', 'hist-ticket-11-277', 'prod-americano', 1, 12000, 0, '2025-11-10T17:38:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-277-4', 'hist-ticket-11-277', 'prod-mocha', 1, 16500, 0, '2025-11-10T17:38:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-277', 'hist-ticket-11-277', 'cash', 58000, 'completed', '2025-11-10T17:38:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-278', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-10T19:15:20.000Z', '2025-11-10T19:15:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-278-1', 'hist-ticket-11-278', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T19:15:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-278-2', 'hist-ticket-11-278', 'prod-americano', 1, 12000, 0, '2025-11-10T19:15:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-278-3', 'hist-ticket-11-278', 'prod-americano', 1, 12000, 0, '2025-11-10T19:15:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-278', 'hist-ticket-11-278', 'cash', 38500, 'completed', '2025-11-10T19:15:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-279', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-11-10T17:30:29.000Z', '2025-11-10T17:30:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-279-1', 'hist-ticket-11-279', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T17:30:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-279', 'hist-ticket-11-279', 'cash', 14500, 'completed', '2025-11-10T17:30:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-280', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-10T09:25:48.000Z', '2025-11-10T09:25:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-280-1', 'hist-ticket-11-280', 'prod-latte', 1, 15000, 0, '2025-11-10T09:25:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-280', 'hist-ticket-11-280', 'cash', 15000, 'completed', '2025-11-10T09:25:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-281', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-10T09:35:57.000Z', '2025-11-10T09:35:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-281-1', 'hist-ticket-11-281', 'prod-americano', 1, 12000, 0, '2025-11-10T09:35:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-281', 'hist-ticket-11-281', 'cash', 12000, 'completed', '2025-11-10T09:35:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-282', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-10T17:20:16.000Z', '2025-11-10T17:20:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-282-1', 'hist-ticket-11-282', 'prod-latte', 1, 15000, 0, '2025-11-10T17:20:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-282-2', 'hist-ticket-11-282', 'prod-latte', 1, 15000, 0, '2025-11-10T17:20:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-282-3', 'hist-ticket-11-282', 'prod-mocha', 1, 16500, 0, '2025-11-10T17:20:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-282-4', 'hist-ticket-11-282', 'prod-americano', 1, 12000, 0, '2025-11-10T17:20:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-282', 'hist-ticket-11-282', 'cash', 58500, 'completed', '2025-11-10T17:20:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-283', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-10T12:24:19.000Z', '2025-11-10T12:24:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-283-1', 'hist-ticket-11-283', 'prod-latte', 1, 15000, 0, '2025-11-10T12:24:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-283-2', 'hist-ticket-11-283', 'prod-americano', 1, 12000, 0, '2025-11-10T12:24:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-283-3', 'hist-ticket-11-283', 'prod-latte', 1, 15000, 0, '2025-11-10T12:24:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-283', 'hist-ticket-11-283', 'cash', 42000, 'completed', '2025-11-10T12:24:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-284', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2025-11-10T19:33:43.000Z', '2025-11-10T19:33:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-284-1', 'hist-ticket-11-284', 'prod-latte', 1, 15000, 0, '2025-11-10T19:33:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-284-2', 'hist-ticket-11-284', 'prod-americano', 1, 12000, 0, '2025-11-10T19:33:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-284', 'hist-ticket-11-284', 'cash', 27000, 'completed', '2025-11-10T19:33:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-285', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2025-11-10T18:15:08.000Z', '2025-11-10T18:15:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-285-1', 'hist-ticket-11-285', 'prod-americano', 1, 12000, 0, '2025-11-10T18:15:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-285-2', 'hist-ticket-11-285', 'prod-mocha', 1, 16500, 0, '2025-11-10T18:15:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-285-3', 'hist-ticket-11-285', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T18:15:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-285', 'hist-ticket-11-285', 'cash', 43000, 'completed', '2025-11-10T18:15:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-286', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-10T09:17:52.000Z', '2025-11-10T09:17:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-286-1', 'hist-ticket-11-286', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T09:17:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-286-2', 'hist-ticket-11-286', 'prod-latte', 1, 15000, 0, '2025-11-10T09:17:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-286-3', 'hist-ticket-11-286', 'prod-mocha', 1, 16500, 0, '2025-11-10T09:17:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-286-4', 'hist-ticket-11-286', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T09:17:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-286', 'hist-ticket-11-286', 'cash', 60500, 'completed', '2025-11-10T09:17:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-287', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2025-11-10T16:05:15.000Z', '2025-11-10T16:05:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-287-1', 'hist-ticket-11-287', 'prod-mocha', 1, 16500, 0, '2025-11-10T16:05:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-287-2', 'hist-ticket-11-287', 'prod-latte', 1, 15000, 0, '2025-11-10T16:05:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-287-3', 'hist-ticket-11-287', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T16:05:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-287-4', 'hist-ticket-11-287', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T16:05:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-287', 'hist-ticket-11-287', 'cash', 60500, 'completed', '2025-11-10T16:05:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-288', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-11-10T19:57:29.000Z', '2025-11-10T19:57:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-288-1', 'hist-ticket-11-288', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T19:57:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-288-2', 'hist-ticket-11-288', 'prod-americano', 1, 12000, 0, '2025-11-10T19:57:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-288', 'hist-ticket-11-288', 'cash', 26500, 'completed', '2025-11-10T19:57:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-289', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2025-11-10T13:24:52.000Z', '2025-11-10T13:24:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-289-1', 'hist-ticket-11-289', 'prod-mocha', 1, 16500, 0, '2025-11-10T13:24:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-289-2', 'hist-ticket-11-289', 'prod-mocha', 1, 16500, 0, '2025-11-10T13:24:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-289-3', 'hist-ticket-11-289', 'prod-americano', 1, 12000, 0, '2025-11-10T13:24:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-289-4', 'hist-ticket-11-289', 'prod-mocha', 1, 16500, 0, '2025-11-10T13:24:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-289', 'hist-ticket-11-289', 'cash', 61500, 'completed', '2025-11-10T13:24:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-290', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-10T14:41:03.000Z', '2025-11-10T14:41:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-290-1', 'hist-ticket-11-290', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T14:41:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-290-2', 'hist-ticket-11-290', 'prod-americano', 1, 12000, 0, '2025-11-10T14:41:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-290-3', 'hist-ticket-11-290', 'prod-latte', 1, 15000, 0, '2025-11-10T14:41:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-290', 'hist-ticket-11-290', 'cash', 41500, 'completed', '2025-11-10T14:41:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-11-291', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-10T16:59:36.000Z', '2025-11-10T16:59:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-291-1', 'hist-ticket-11-291', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T16:59:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-291-2', 'hist-ticket-11-291', 'prod-americano', 1, 12000, 0, '2025-11-10T16:59:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-291-3', 'hist-ticket-11-291', 'prod-americano', 1, 12000, 0, '2025-11-10T16:59:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-11-291-4', 'hist-ticket-11-291', 'prod-cappuccino', 1, 14500, 0, '2025-11-10T16:59:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-11-291', 'hist-ticket-11-291', 'cash', 53000, 'completed', '2025-11-10T16:59:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-292', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-11-11T19:39:33.000Z', '2025-11-11T19:39:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-292-1', 'hist-ticket-12-292', 'prod-mocha', 1, 16500, 0, '2025-11-11T19:39:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-292', 'hist-ticket-12-292', 'cash', 16500, 'completed', '2025-11-11T19:39:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-293', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-11T16:01:49.000Z', '2025-11-11T16:01:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-293-1', 'hist-ticket-12-293', 'prod-latte', 1, 15000, 0, '2025-11-11T16:01:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-293-2', 'hist-ticket-12-293', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T16:01:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-293-3', 'hist-ticket-12-293', 'prod-americano', 1, 12000, 0, '2025-11-11T16:01:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-293', 'hist-ticket-12-293', 'cash', 41500, 'completed', '2025-11-11T16:01:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-294', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-11T10:37:10.000Z', '2025-11-11T10:37:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-294-1', 'hist-ticket-12-294', 'prod-latte', 1, 15000, 0, '2025-11-11T10:37:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-294', 'hist-ticket-12-294', 'cash', 15000, 'completed', '2025-11-11T10:37:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-295', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-11T10:06:48.000Z', '2025-11-11T10:06:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-295-1', 'hist-ticket-12-295', 'prod-americano', 1, 12000, 0, '2025-11-11T10:06:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-295', 'hist-ticket-12-295', 'cash', 12000, 'completed', '2025-11-11T10:06:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-296', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-11T19:04:55.000Z', '2025-11-11T19:04:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-296-1', 'hist-ticket-12-296', 'prod-mocha', 1, 16500, 0, '2025-11-11T19:04:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-296-2', 'hist-ticket-12-296', 'prod-latte', 1, 15000, 0, '2025-11-11T19:04:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-296-3', 'hist-ticket-12-296', 'prod-americano', 1, 12000, 0, '2025-11-11T19:04:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-296', 'hist-ticket-12-296', 'cash', 43500, 'completed', '2025-11-11T19:04:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-297', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2025-11-11T15:27:35.000Z', '2025-11-11T15:27:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-297-1', 'hist-ticket-12-297', 'prod-mocha', 1, 16500, 0, '2025-11-11T15:27:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-297', 'hist-ticket-12-297', 'cash', 16500, 'completed', '2025-11-11T15:27:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-298', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-11-11T17:57:23.000Z', '2025-11-11T17:57:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-298-1', 'hist-ticket-12-298', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T17:57:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-298-2', 'hist-ticket-12-298', 'prod-latte', 1, 15000, 0, '2025-11-11T17:57:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-298-3', 'hist-ticket-12-298', 'prod-mocha', 1, 16500, 0, '2025-11-11T17:57:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-298-4', 'hist-ticket-12-298', 'prod-latte', 1, 15000, 0, '2025-11-11T17:57:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-298', 'hist-ticket-12-298', 'cash', 61000, 'completed', '2025-11-11T17:57:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-299', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-11T19:00:24.000Z', '2025-11-11T19:00:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-299-1', 'hist-ticket-12-299', 'prod-americano', 1, 12000, 0, '2025-11-11T19:00:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-299-2', 'hist-ticket-12-299', 'prod-latte', 1, 15000, 0, '2025-11-11T19:00:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-299-3', 'hist-ticket-12-299', 'prod-mocha', 1, 16500, 0, '2025-11-11T19:00:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-299', 'hist-ticket-12-299', 'cash', 43500, 'completed', '2025-11-11T19:00:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-300', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-11T17:26:06.000Z', '2025-11-11T17:26:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-300-1', 'hist-ticket-12-300', 'prod-latte', 1, 15000, 0, '2025-11-11T17:26:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-300-2', 'hist-ticket-12-300', 'prod-latte', 1, 15000, 0, '2025-11-11T17:26:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-300-3', 'hist-ticket-12-300', 'prod-latte', 1, 15000, 0, '2025-11-11T17:26:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-300-4', 'hist-ticket-12-300', 'prod-americano', 1, 12000, 0, '2025-11-11T17:26:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-300', 'hist-ticket-12-300', 'cash', 57000, 'completed', '2025-11-11T17:26:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-301', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-11T17:54:17.000Z', '2025-11-11T17:54:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-301-1', 'hist-ticket-12-301', 'prod-latte', 1, 15000, 0, '2025-11-11T17:54:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-301-2', 'hist-ticket-12-301', 'prod-americano', 1, 12000, 0, '2025-11-11T17:54:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-301-3', 'hist-ticket-12-301', 'prod-latte', 1, 15000, 0, '2025-11-11T17:54:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-301', 'hist-ticket-12-301', 'cash', 42000, 'completed', '2025-11-11T17:54:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-302', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-11T18:22:06.000Z', '2025-11-11T18:22:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-302-1', 'hist-ticket-12-302', 'prod-latte', 1, 15000, 0, '2025-11-11T18:22:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-302-2', 'hist-ticket-12-302', 'prod-mocha', 1, 16500, 0, '2025-11-11T18:22:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-302-3', 'hist-ticket-12-302', 'prod-americano', 1, 12000, 0, '2025-11-11T18:22:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-302', 'hist-ticket-12-302', 'cash', 43500, 'completed', '2025-11-11T18:22:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-303', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-11T12:21:06.000Z', '2025-11-11T12:21:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-303-1', 'hist-ticket-12-303', 'prod-latte', 1, 15000, 0, '2025-11-11T12:21:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-303-2', 'hist-ticket-12-303', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T12:21:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-303', 'hist-ticket-12-303', 'cash', 29500, 'completed', '2025-11-11T12:21:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-304', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-11T14:09:42.000Z', '2025-11-11T14:09:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-304-1', 'hist-ticket-12-304', 'prod-americano', 1, 12000, 0, '2025-11-11T14:09:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-304-2', 'hist-ticket-12-304', 'prod-latte', 1, 15000, 0, '2025-11-11T14:09:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-304-3', 'hist-ticket-12-304', 'prod-mocha', 1, 16500, 0, '2025-11-11T14:09:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-304', 'hist-ticket-12-304', 'cash', 43500, 'completed', '2025-11-11T14:09:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-305', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-11T19:44:32.000Z', '2025-11-11T19:44:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-305-1', 'hist-ticket-12-305', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T19:44:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-305', 'hist-ticket-12-305', 'cash', 14500, 'completed', '2025-11-11T19:44:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-306', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-11T13:10:15.000Z', '2025-11-11T13:10:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-306-1', 'hist-ticket-12-306', 'prod-mocha', 1, 16500, 0, '2025-11-11T13:10:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-306-2', 'hist-ticket-12-306', 'prod-americano', 1, 12000, 0, '2025-11-11T13:10:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-306', 'hist-ticket-12-306', 'cash', 28500, 'completed', '2025-11-11T13:10:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-307', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-11T16:57:58.000Z', '2025-11-11T16:57:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-307-1', 'hist-ticket-12-307', 'prod-latte', 1, 15000, 0, '2025-11-11T16:57:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-307-2', 'hist-ticket-12-307', 'prod-latte', 1, 15000, 0, '2025-11-11T16:57:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-307-3', 'hist-ticket-12-307', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T16:57:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-307-4', 'hist-ticket-12-307', 'prod-latte', 1, 15000, 0, '2025-11-11T16:57:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-307', 'hist-ticket-12-307', 'cash', 59500, 'completed', '2025-11-11T16:57:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-308', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-11T11:24:59.000Z', '2025-11-11T11:24:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-308-1', 'hist-ticket-12-308', 'prod-americano', 1, 12000, 0, '2025-11-11T11:24:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-308-2', 'hist-ticket-12-308', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T11:24:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-308-3', 'hist-ticket-12-308', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T11:24:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-308-4', 'hist-ticket-12-308', 'prod-latte', 1, 15000, 0, '2025-11-11T11:24:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-308', 'hist-ticket-12-308', 'cash', 56000, 'completed', '2025-11-11T11:24:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-309', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-11T15:30:16.000Z', '2025-11-11T15:30:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-309-1', 'hist-ticket-12-309', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T15:30:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-309-2', 'hist-ticket-12-309', 'prod-mocha', 1, 16500, 0, '2025-11-11T15:30:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-309-3', 'hist-ticket-12-309', 'prod-mocha', 1, 16500, 0, '2025-11-11T15:30:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-309', 'hist-ticket-12-309', 'cash', 47500, 'completed', '2025-11-11T15:30:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-310', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-11T16:21:37.000Z', '2025-11-11T16:21:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-310-1', 'hist-ticket-12-310', 'prod-americano', 1, 12000, 0, '2025-11-11T16:21:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-310-2', 'hist-ticket-12-310', 'prod-latte', 1, 15000, 0, '2025-11-11T16:21:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-310-3', 'hist-ticket-12-310', 'prod-latte', 1, 15000, 0, '2025-11-11T16:21:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-310', 'hist-ticket-12-310', 'cash', 42000, 'completed', '2025-11-11T16:21:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-311', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-11-11T13:55:41.000Z', '2025-11-11T13:55:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-311-1', 'hist-ticket-12-311', 'prod-mocha', 1, 16500, 0, '2025-11-11T13:55:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-311-2', 'hist-ticket-12-311', 'prod-latte', 1, 15000, 0, '2025-11-11T13:55:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-311-3', 'hist-ticket-12-311', 'prod-americano', 1, 12000, 0, '2025-11-11T13:55:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-311-4', 'hist-ticket-12-311', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T13:55:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-311', 'hist-ticket-12-311', 'cash', 58000, 'completed', '2025-11-11T13:55:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-312', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-11T15:27:04.000Z', '2025-11-11T15:27:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-312-1', 'hist-ticket-12-312', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T15:27:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-312-2', 'hist-ticket-12-312', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T15:27:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-312', 'hist-ticket-12-312', 'cash', 29000, 'completed', '2025-11-11T15:27:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-313', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-11T14:52:00.000Z', '2025-11-11T14:52:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-313-1', 'hist-ticket-12-313', 'prod-americano', 1, 12000, 0, '2025-11-11T14:52:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-313', 'hist-ticket-12-313', 'cash', 12000, 'completed', '2025-11-11T14:52:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-314', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-11T17:38:39.000Z', '2025-11-11T17:38:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-314-1', 'hist-ticket-12-314', 'prod-mocha', 1, 16500, 0, '2025-11-11T17:38:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-314-2', 'hist-ticket-12-314', 'prod-latte', 1, 15000, 0, '2025-11-11T17:38:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-314', 'hist-ticket-12-314', 'cash', 31500, 'completed', '2025-11-11T17:38:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-12-315', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-11T14:41:47.000Z', '2025-11-11T14:41:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-315-1', 'hist-ticket-12-315', 'prod-cappuccino', 1, 14500, 0, '2025-11-11T14:41:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-12-315-2', 'hist-ticket-12-315', 'prod-latte', 1, 15000, 0, '2025-11-11T14:41:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-12-315', 'hist-ticket-12-315', 'cash', 29500, 'completed', '2025-11-11T14:41:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-316', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-12T13:44:57.000Z', '2025-11-12T13:44:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-316-1', 'hist-ticket-13-316', 'prod-americano', 1, 12000, 0, '2025-11-12T13:44:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-316-2', 'hist-ticket-13-316', 'prod-americano', 1, 12000, 0, '2025-11-12T13:44:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-316-3', 'hist-ticket-13-316', 'prod-latte', 1, 15000, 0, '2025-11-12T13:44:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-316', 'hist-ticket-13-316', 'cash', 39000, 'completed', '2025-11-12T13:44:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-317', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2025-11-12T19:55:34.000Z', '2025-11-12T19:55:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-317-1', 'hist-ticket-13-317', 'prod-mocha', 1, 16500, 0, '2025-11-12T19:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-317-2', 'hist-ticket-13-317', 'prod-latte', 1, 15000, 0, '2025-11-12T19:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-317-3', 'hist-ticket-13-317', 'prod-americano', 1, 12000, 0, '2025-11-12T19:55:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-317', 'hist-ticket-13-317', 'cash', 43500, 'completed', '2025-11-12T19:55:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-318', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-12T18:14:33.000Z', '2025-11-12T18:14:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-318-1', 'hist-ticket-13-318', 'prod-latte', 1, 15000, 0, '2025-11-12T18:14:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-318', 'hist-ticket-13-318', 'cash', 15000, 'completed', '2025-11-12T18:14:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-319', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-11-12T17:02:00.000Z', '2025-11-12T17:02:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-319-1', 'hist-ticket-13-319', 'prod-americano', 1, 12000, 0, '2025-11-12T17:02:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-319', 'hist-ticket-13-319', 'cash', 12000, 'completed', '2025-11-12T17:02:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-320', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2025-11-12T12:55:38.000Z', '2025-11-12T12:55:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-320-1', 'hist-ticket-13-320', 'prod-mocha', 1, 16500, 0, '2025-11-12T12:55:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-320', 'hist-ticket-13-320', 'cash', 16500, 'completed', '2025-11-12T12:55:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-321', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-11-12T14:16:54.000Z', '2025-11-12T14:16:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-321-1', 'hist-ticket-13-321', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T14:16:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-321-2', 'hist-ticket-13-321', 'prod-mocha', 1, 16500, 0, '2025-11-12T14:16:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-321', 'hist-ticket-13-321', 'cash', 31000, 'completed', '2025-11-12T14:16:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-322', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2025-11-12T10:36:41.000Z', '2025-11-12T10:36:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-322-1', 'hist-ticket-13-322', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T10:36:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-322', 'hist-ticket-13-322', 'cash', 14500, 'completed', '2025-11-12T10:36:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-323', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-11-12T17:08:42.000Z', '2025-11-12T17:08:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-323-1', 'hist-ticket-13-323', 'prod-mocha', 1, 16500, 0, '2025-11-12T17:08:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-323-2', 'hist-ticket-13-323', 'prod-latte', 1, 15000, 0, '2025-11-12T17:08:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-323', 'hist-ticket-13-323', 'cash', 31500, 'completed', '2025-11-12T17:08:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-324', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-12T19:30:58.000Z', '2025-11-12T19:30:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-324-1', 'hist-ticket-13-324', 'prod-latte', 1, 15000, 0, '2025-11-12T19:30:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-324-2', 'hist-ticket-13-324', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T19:30:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-324-3', 'hist-ticket-13-324', 'prod-americano', 1, 12000, 0, '2025-11-12T19:30:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-324', 'hist-ticket-13-324', 'cash', 41500, 'completed', '2025-11-12T19:30:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-325', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2025-11-12T19:04:20.000Z', '2025-11-12T19:04:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-325-1', 'hist-ticket-13-325', 'prod-americano', 1, 12000, 0, '2025-11-12T19:04:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-325-2', 'hist-ticket-13-325', 'prod-mocha', 1, 16500, 0, '2025-11-12T19:04:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-325', 'hist-ticket-13-325', 'cash', 28500, 'completed', '2025-11-12T19:04:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-326', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-12T10:09:22.000Z', '2025-11-12T10:09:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-326-1', 'hist-ticket-13-326', 'prod-mocha', 1, 16500, 0, '2025-11-12T10:09:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-326-2', 'hist-ticket-13-326', 'prod-mocha', 1, 16500, 0, '2025-11-12T10:09:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-326', 'hist-ticket-13-326', 'cash', 33000, 'completed', '2025-11-12T10:09:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-327', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-12T16:59:25.000Z', '2025-11-12T16:59:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-327-1', 'hist-ticket-13-327', 'prod-latte', 1, 15000, 0, '2025-11-12T16:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-327-2', 'hist-ticket-13-327', 'prod-latte', 1, 15000, 0, '2025-11-12T16:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-327-3', 'hist-ticket-13-327', 'prod-mocha', 1, 16500, 0, '2025-11-12T16:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-327-4', 'hist-ticket-13-327', 'prod-latte', 1, 15000, 0, '2025-11-12T16:59:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-327', 'hist-ticket-13-327', 'cash', 61500, 'completed', '2025-11-12T16:59:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-328', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-12T15:32:05.000Z', '2025-11-12T15:32:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-328-1', 'hist-ticket-13-328', 'prod-mocha', 1, 16500, 0, '2025-11-12T15:32:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-328-2', 'hist-ticket-13-328', 'prod-latte', 1, 15000, 0, '2025-11-12T15:32:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-328-3', 'hist-ticket-13-328', 'prod-americano', 1, 12000, 0, '2025-11-12T15:32:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-328', 'hist-ticket-13-328', 'cash', 43500, 'completed', '2025-11-12T15:32:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-329', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-12T11:06:17.000Z', '2025-11-12T11:06:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-329-1', 'hist-ticket-13-329', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T11:06:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-329-2', 'hist-ticket-13-329', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T11:06:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-329-3', 'hist-ticket-13-329', 'prod-latte', 1, 15000, 0, '2025-11-12T11:06:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-329-4', 'hist-ticket-13-329', 'prod-mocha', 1, 16500, 0, '2025-11-12T11:06:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-329', 'hist-ticket-13-329', 'cash', 60500, 'completed', '2025-11-12T11:06:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-330', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-12T10:54:15.000Z', '2025-11-12T10:54:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-330-1', 'hist-ticket-13-330', 'prod-americano', 1, 12000, 0, '2025-11-12T10:54:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-330', 'hist-ticket-13-330', 'cash', 12000, 'completed', '2025-11-12T10:54:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-331', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-12T17:10:59.000Z', '2025-11-12T17:10:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-331-1', 'hist-ticket-13-331', 'prod-latte', 1, 15000, 0, '2025-11-12T17:10:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-331-2', 'hist-ticket-13-331', 'prod-mocha', 1, 16500, 0, '2025-11-12T17:10:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-331-3', 'hist-ticket-13-331', 'prod-mocha', 1, 16500, 0, '2025-11-12T17:10:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-331-4', 'hist-ticket-13-331', 'prod-americano', 1, 12000, 0, '2025-11-12T17:10:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-331', 'hist-ticket-13-331', 'cash', 60000, 'completed', '2025-11-12T17:10:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-332', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-11-12T09:43:33.000Z', '2025-11-12T09:43:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-332-1', 'hist-ticket-13-332', 'prod-latte', 1, 15000, 0, '2025-11-12T09:43:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-332-2', 'hist-ticket-13-332', 'prod-americano', 1, 12000, 0, '2025-11-12T09:43:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-332', 'hist-ticket-13-332', 'cash', 27000, 'completed', '2025-11-12T09:43:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-333', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-12T18:44:09.000Z', '2025-11-12T18:44:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-333-1', 'hist-ticket-13-333', 'prod-americano', 1, 12000, 0, '2025-11-12T18:44:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-333', 'hist-ticket-13-333', 'cash', 12000, 'completed', '2025-11-12T18:44:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-334', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-12T16:02:46.000Z', '2025-11-12T16:02:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-334-1', 'hist-ticket-13-334', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T16:02:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-334-2', 'hist-ticket-13-334', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T16:02:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-334', 'hist-ticket-13-334', 'cash', 29000, 'completed', '2025-11-12T16:02:46.000Z');