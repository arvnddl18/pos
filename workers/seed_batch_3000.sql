INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-665', 'hist-ticket-28-665', 'cash', 53000, 'completed', '2025-11-27T17:44:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-666', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2025-11-27T18:21:41.000Z', '2025-11-27T18:21:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-666-1', 'hist-ticket-28-666', 'prod-americano', 1, 12000, 0, '2025-11-27T18:21:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-666-2', 'hist-ticket-28-666', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T18:21:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-666', 'hist-ticket-28-666', 'cash', 26500, 'completed', '2025-11-27T18:21:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-667', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-27T17:56:27.000Z', '2025-11-27T17:56:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-667-1', 'hist-ticket-28-667', 'prod-americano', 1, 12000, 0, '2025-11-27T17:56:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-667-2', 'hist-ticket-28-667', 'prod-latte', 1, 15000, 0, '2025-11-27T17:56:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-667', 'hist-ticket-28-667', 'cash', 27000, 'completed', '2025-11-27T17:56:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-668', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2025-11-27T16:40:47.000Z', '2025-11-27T16:40:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-668-1', 'hist-ticket-28-668', 'prod-americano', 1, 12000, 0, '2025-11-27T16:40:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-668-2', 'hist-ticket-28-668', 'prod-mocha', 1, 16500, 0, '2025-11-27T16:40:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-668-3', 'hist-ticket-28-668', 'prod-americano', 1, 12000, 0, '2025-11-27T16:40:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-668', 'hist-ticket-28-668', 'cash', 40500, 'completed', '2025-11-27T16:40:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-669', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-27T18:54:39.000Z', '2025-11-27T18:54:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-669-1', 'hist-ticket-28-669', 'prod-mocha', 1, 16500, 0, '2025-11-27T18:54:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-669-2', 'hist-ticket-28-669', 'prod-latte', 1, 15000, 0, '2025-11-27T18:54:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-669', 'hist-ticket-28-669', 'cash', 31500, 'completed', '2025-11-27T18:54:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-670', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-27T14:59:03.000Z', '2025-11-27T14:59:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-670-1', 'hist-ticket-28-670', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T14:59:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-670-2', 'hist-ticket-28-670', 'prod-latte', 1, 15000, 0, '2025-11-27T14:59:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-670-3', 'hist-ticket-28-670', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T14:59:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-670-4', 'hist-ticket-28-670', 'prod-americano', 1, 12000, 0, '2025-11-27T14:59:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-670', 'hist-ticket-28-670', 'cash', 56000, 'completed', '2025-11-27T14:59:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-671', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-27T09:41:18.000Z', '2025-11-27T09:41:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-671-1', 'hist-ticket-28-671', 'prod-latte', 1, 15000, 0, '2025-11-27T09:41:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-671-2', 'hist-ticket-28-671', 'prod-latte', 1, 15000, 0, '2025-11-27T09:41:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-671', 'hist-ticket-28-671', 'cash', 30000, 'completed', '2025-11-27T09:41:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-672', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-27T15:30:40.000Z', '2025-11-27T15:30:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-672-1', 'hist-ticket-28-672', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T15:30:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-672-2', 'hist-ticket-28-672', 'prod-latte', 1, 15000, 0, '2025-11-27T15:30:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-672-3', 'hist-ticket-28-672', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T15:30:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-672', 'hist-ticket-28-672', 'cash', 44000, 'completed', '2025-11-27T15:30:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-673', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-27T10:27:35.000Z', '2025-11-27T10:27:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-673-1', 'hist-ticket-28-673', 'prod-americano', 1, 12000, 0, '2025-11-27T10:27:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-673-2', 'hist-ticket-28-673', 'prod-americano', 1, 12000, 0, '2025-11-27T10:27:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-673', 'hist-ticket-28-673', 'cash', 24000, 'completed', '2025-11-27T10:27:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-674', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-27T10:48:38.000Z', '2025-11-27T10:48:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-674-1', 'hist-ticket-28-674', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T10:48:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-674-2', 'hist-ticket-28-674', 'prod-mocha', 1, 16500, 0, '2025-11-27T10:48:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-674-3', 'hist-ticket-28-674', 'prod-latte', 1, 15000, 0, '2025-11-27T10:48:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-674-4', 'hist-ticket-28-674', 'prod-latte', 1, 15000, 0, '2025-11-27T10:48:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-674', 'hist-ticket-28-674', 'cash', 61000, 'completed', '2025-11-27T10:48:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-675', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-27T18:49:26.000Z', '2025-11-27T18:49:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-675-1', 'hist-ticket-28-675', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T18:49:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-675-2', 'hist-ticket-28-675', 'prod-americano', 1, 12000, 0, '2025-11-27T18:49:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-675-3', 'hist-ticket-28-675', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T18:49:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-675-4', 'hist-ticket-28-675', 'prod-latte', 1, 15000, 0, '2025-11-27T18:49:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-675', 'hist-ticket-28-675', 'cash', 56000, 'completed', '2025-11-27T18:49:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-676', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-11-27T16:49:37.000Z', '2025-11-27T16:49:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-676-1', 'hist-ticket-28-676', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T16:49:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-676-2', 'hist-ticket-28-676', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T16:49:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-676-3', 'hist-ticket-28-676', 'prod-latte', 1, 15000, 0, '2025-11-27T16:49:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-676-4', 'hist-ticket-28-676', 'prod-mocha', 1, 16500, 0, '2025-11-27T16:49:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-676', 'hist-ticket-28-676', 'cash', 60500, 'completed', '2025-11-27T16:49:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-677', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-28T13:33:45.000Z', '2025-11-28T13:33:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-677-1', 'hist-ticket-29-677', 'prod-mocha', 1, 16500, 0, '2025-11-28T13:33:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-677-2', 'hist-ticket-29-677', 'prod-latte', 1, 15000, 0, '2025-11-28T13:33:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-677', 'hist-ticket-29-677', 'cash', 31500, 'completed', '2025-11-28T13:33:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-678', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-28T16:11:17.000Z', '2025-11-28T16:11:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-678-1', 'hist-ticket-29-678', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T16:11:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-678-2', 'hist-ticket-29-678', 'prod-americano', 1, 12000, 0, '2025-11-28T16:11:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-678-3', 'hist-ticket-29-678', 'prod-latte', 1, 15000, 0, '2025-11-28T16:11:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-678', 'hist-ticket-29-678', 'cash', 41500, 'completed', '2025-11-28T16:11:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-679', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-28T17:52:08.000Z', '2025-11-28T17:52:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-679-1', 'hist-ticket-29-679', 'prod-latte', 1, 15000, 0, '2025-11-28T17:52:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-679', 'hist-ticket-29-679', 'cash', 15000, 'completed', '2025-11-28T17:52:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-680', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-28T14:10:40.000Z', '2025-11-28T14:10:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-680-1', 'hist-ticket-29-680', 'prod-mocha', 1, 16500, 0, '2025-11-28T14:10:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-680-2', 'hist-ticket-29-680', 'prod-americano', 1, 12000, 0, '2025-11-28T14:10:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-680-3', 'hist-ticket-29-680', 'prod-mocha', 1, 16500, 0, '2025-11-28T14:10:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-680-4', 'hist-ticket-29-680', 'prod-americano', 1, 12000, 0, '2025-11-28T14:10:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-680', 'hist-ticket-29-680', 'cash', 57000, 'completed', '2025-11-28T14:10:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-681', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-11-28T09:02:16.000Z', '2025-11-28T09:02:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-681-1', 'hist-ticket-29-681', 'prod-mocha', 1, 16500, 0, '2025-11-28T09:02:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-681', 'hist-ticket-29-681', 'cash', 16500, 'completed', '2025-11-28T09:02:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-682', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2025-11-28T18:00:17.000Z', '2025-11-28T18:00:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-682-1', 'hist-ticket-29-682', 'prod-americano', 1, 12000, 0, '2025-11-28T18:00:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-682', 'hist-ticket-29-682', 'cash', 12000, 'completed', '2025-11-28T18:00:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-683', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-28T08:41:08.000Z', '2025-11-28T08:41:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-683-1', 'hist-ticket-29-683', 'prod-americano', 1, 12000, 0, '2025-11-28T08:41:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-683', 'hist-ticket-29-683', 'cash', 12000, 'completed', '2025-11-28T08:41:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-684', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-28T12:25:20.000Z', '2025-11-28T12:25:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-684-1', 'hist-ticket-29-684', 'prod-americano', 1, 12000, 0, '2025-11-28T12:25:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-684', 'hist-ticket-29-684', 'cash', 12000, 'completed', '2025-11-28T12:25:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-685', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-28T14:08:27.000Z', '2025-11-28T14:08:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-685-1', 'hist-ticket-29-685', 'prod-latte', 1, 15000, 0, '2025-11-28T14:08:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-685', 'hist-ticket-29-685', 'cash', 15000, 'completed', '2025-11-28T14:08:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-686', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-28T12:20:48.000Z', '2025-11-28T12:20:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-686-1', 'hist-ticket-29-686', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T12:20:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-686-2', 'hist-ticket-29-686', 'prod-americano', 1, 12000, 0, '2025-11-28T12:20:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-686', 'hist-ticket-29-686', 'cash', 26500, 'completed', '2025-11-28T12:20:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-687', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-28T15:37:14.000Z', '2025-11-28T15:37:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-687-1', 'hist-ticket-29-687', 'prod-americano', 1, 12000, 0, '2025-11-28T15:37:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-687', 'hist-ticket-29-687', 'cash', 12000, 'completed', '2025-11-28T15:37:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-688', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-28T11:09:45.000Z', '2025-11-28T11:09:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-688-1', 'hist-ticket-29-688', 'prod-americano', 1, 12000, 0, '2025-11-28T11:09:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-688-2', 'hist-ticket-29-688', 'prod-mocha', 1, 16500, 0, '2025-11-28T11:09:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-688-3', 'hist-ticket-29-688', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T11:09:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-688-4', 'hist-ticket-29-688', 'prod-americano', 1, 12000, 0, '2025-11-28T11:09:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-688', 'hist-ticket-29-688', 'cash', 55000, 'completed', '2025-11-28T11:09:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-689', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2025-11-28T08:00:53.000Z', '2025-11-28T08:00:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-689-1', 'hist-ticket-29-689', 'prod-mocha', 1, 16500, 0, '2025-11-28T08:00:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-689-2', 'hist-ticket-29-689', 'prod-americano', 1, 12000, 0, '2025-11-28T08:00:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-689-3', 'hist-ticket-29-689', 'prod-mocha', 1, 16500, 0, '2025-11-28T08:00:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-689', 'hist-ticket-29-689', 'cash', 45000, 'completed', '2025-11-28T08:00:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-690', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-28T14:36:24.000Z', '2025-11-28T14:36:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-690-1', 'hist-ticket-29-690', 'prod-mocha', 1, 16500, 0, '2025-11-28T14:36:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-690', 'hist-ticket-29-690', 'cash', 16500, 'completed', '2025-11-28T14:36:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-691', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-28T17:44:27.000Z', '2025-11-28T17:44:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-691-1', 'hist-ticket-29-691', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T17:44:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-691-2', 'hist-ticket-29-691', 'prod-latte', 1, 15000, 0, '2025-11-28T17:44:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-691-3', 'hist-ticket-29-691', 'prod-mocha', 1, 16500, 0, '2025-11-28T17:44:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-691-4', 'hist-ticket-29-691', 'prod-latte', 1, 15000, 0, '2025-11-28T17:44:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-691', 'hist-ticket-29-691', 'cash', 61000, 'completed', '2025-11-28T17:44:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-692', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-11-28T18:34:05.000Z', '2025-11-28T18:34:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-692-1', 'hist-ticket-29-692', 'prod-americano', 1, 12000, 0, '2025-11-28T18:34:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-692-2', 'hist-ticket-29-692', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T18:34:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-692-3', 'hist-ticket-29-692', 'prod-latte', 1, 15000, 0, '2025-11-28T18:34:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-692', 'hist-ticket-29-692', 'cash', 41500, 'completed', '2025-11-28T18:34:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-693', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2025-11-28T17:36:26.000Z', '2025-11-28T17:36:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-693-1', 'hist-ticket-29-693', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T17:36:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-693-2', 'hist-ticket-29-693', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T17:36:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-693-3', 'hist-ticket-29-693', 'prod-americano', 1, 12000, 0, '2025-11-28T17:36:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-693-4', 'hist-ticket-29-693', 'prod-americano', 1, 12000, 0, '2025-11-28T17:36:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-693', 'hist-ticket-29-693', 'cash', 53000, 'completed', '2025-11-28T17:36:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-694', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-28T11:00:04.000Z', '2025-11-28T11:00:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-694-1', 'hist-ticket-29-694', 'prod-latte', 1, 15000, 0, '2025-11-28T11:00:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-694-2', 'hist-ticket-29-694', 'prod-americano', 1, 12000, 0, '2025-11-28T11:00:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-694-3', 'hist-ticket-29-694', 'prod-mocha', 1, 16500, 0, '2025-11-28T11:00:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-694-4', 'hist-ticket-29-694', 'prod-mocha', 1, 16500, 0, '2025-11-28T11:00:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-694', 'hist-ticket-29-694', 'cash', 60000, 'completed', '2025-11-28T11:00:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-695', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-28T14:17:56.000Z', '2025-11-28T14:17:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-695-1', 'hist-ticket-29-695', 'prod-mocha', 1, 16500, 0, '2025-11-28T14:17:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-695-2', 'hist-ticket-29-695', 'prod-americano', 1, 12000, 0, '2025-11-28T14:17:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-695', 'hist-ticket-29-695', 'cash', 28500, 'completed', '2025-11-28T14:17:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-696', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2025-11-28T08:41:08.000Z', '2025-11-28T08:41:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-696-1', 'hist-ticket-29-696', 'prod-latte', 1, 15000, 0, '2025-11-28T08:41:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-696', 'hist-ticket-29-696', 'cash', 15000, 'completed', '2025-11-28T08:41:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-697', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-28T15:05:35.000Z', '2025-11-28T15:05:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-697-1', 'hist-ticket-29-697', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T15:05:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-697-2', 'hist-ticket-29-697', 'prod-latte', 1, 15000, 0, '2025-11-28T15:05:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-697-3', 'hist-ticket-29-697', 'prod-latte', 1, 15000, 0, '2025-11-28T15:05:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-697', 'hist-ticket-29-697', 'cash', 44500, 'completed', '2025-11-28T15:05:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-698', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-28T11:22:54.000Z', '2025-11-28T11:22:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-698-1', 'hist-ticket-29-698', 'prod-latte', 1, 15000, 0, '2025-11-28T11:22:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-698-2', 'hist-ticket-29-698', 'prod-latte', 1, 15000, 0, '2025-11-28T11:22:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-698', 'hist-ticket-29-698', 'cash', 30000, 'completed', '2025-11-28T11:22:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-699', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2025-11-28T18:25:41.000Z', '2025-11-28T18:25:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-699-1', 'hist-ticket-29-699', 'prod-americano', 1, 12000, 0, '2025-11-28T18:25:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-699-2', 'hist-ticket-29-699', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T18:25:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-699-3', 'hist-ticket-29-699', 'prod-americano', 1, 12000, 0, '2025-11-28T18:25:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-699-4', 'hist-ticket-29-699', 'prod-mocha', 1, 16500, 0, '2025-11-28T18:25:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-699', 'hist-ticket-29-699', 'cash', 55000, 'completed', '2025-11-28T18:25:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-700', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2025-11-28T09:13:57.000Z', '2025-11-28T09:13:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-700-1', 'hist-ticket-29-700', 'prod-americano', 1, 12000, 0, '2025-11-28T09:13:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-700-2', 'hist-ticket-29-700', 'prod-cappuccino', 1, 14500, 0, '2025-11-28T09:13:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-700', 'hist-ticket-29-700', 'cash', 26500, 'completed', '2025-11-28T09:13:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-701', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-28T17:44:11.000Z', '2025-11-28T17:44:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-701-1', 'hist-ticket-29-701', 'prod-mocha', 1, 16500, 0, '2025-11-28T17:44:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-701-2', 'hist-ticket-29-701', 'prod-americano', 1, 12000, 0, '2025-11-28T17:44:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-701', 'hist-ticket-29-701', 'cash', 28500, 'completed', '2025-11-28T17:44:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-702', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-28T08:53:35.000Z', '2025-11-28T08:53:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-702-1', 'hist-ticket-29-702', 'prod-latte', 1, 15000, 0, '2025-11-28T08:53:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-702', 'hist-ticket-29-702', 'cash', 15000, 'completed', '2025-11-28T08:53:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-29-703', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-28T11:58:36.000Z', '2025-11-28T11:58:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-29-703-1', 'hist-ticket-29-703', 'prod-americano', 1, 12000, 0, '2025-11-28T11:58:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-29-703', 'hist-ticket-29-703', 'cash', 12000, 'completed', '2025-11-28T11:58:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-704', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2025-11-29T19:51:50.000Z', '2025-11-29T19:51:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-704-1', 'hist-ticket-30-704', 'prod-mocha', 1, 16500, 0, '2025-11-29T19:51:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-704-2', 'hist-ticket-30-704', 'prod-americano', 1, 12000, 0, '2025-11-29T19:51:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-704-3', 'hist-ticket-30-704', 'prod-americano', 1, 12000, 0, '2025-11-29T19:51:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-704-4', 'hist-ticket-30-704', 'prod-mocha', 1, 16500, 0, '2025-11-29T19:51:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-704', 'hist-ticket-30-704', 'cash', 57000, 'completed', '2025-11-29T19:51:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-705', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-29T08:38:56.000Z', '2025-11-29T08:38:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-705-1', 'hist-ticket-30-705', 'prod-latte', 1, 15000, 0, '2025-11-29T08:38:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-705-2', 'hist-ticket-30-705', 'prod-latte', 1, 15000, 0, '2025-11-29T08:38:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-705-3', 'hist-ticket-30-705', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T08:38:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-705', 'hist-ticket-30-705', 'cash', 44500, 'completed', '2025-11-29T08:38:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-706', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-29T08:53:54.000Z', '2025-11-29T08:53:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-706-1', 'hist-ticket-30-706', 'prod-mocha', 1, 16500, 0, '2025-11-29T08:53:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-706-2', 'hist-ticket-30-706', 'prod-latte', 1, 15000, 0, '2025-11-29T08:53:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-706', 'hist-ticket-30-706', 'cash', 31500, 'completed', '2025-11-29T08:53:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-707', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-29T19:12:53.000Z', '2025-11-29T19:12:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-707-1', 'hist-ticket-30-707', 'prod-mocha', 1, 16500, 0, '2025-11-29T19:12:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-707-2', 'hist-ticket-30-707', 'prod-mocha', 1, 16500, 0, '2025-11-29T19:12:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-707-3', 'hist-ticket-30-707', 'prod-latte', 1, 15000, 0, '2025-11-29T19:12:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-707-4', 'hist-ticket-30-707', 'prod-mocha', 1, 16500, 0, '2025-11-29T19:12:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-707', 'hist-ticket-30-707', 'cash', 64500, 'completed', '2025-11-29T19:12:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-708', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-29T15:49:21.000Z', '2025-11-29T15:49:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-708-1', 'hist-ticket-30-708', 'prod-americano', 1, 12000, 0, '2025-11-29T15:49:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-708-2', 'hist-ticket-30-708', 'prod-mocha', 1, 16500, 0, '2025-11-29T15:49:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-708-3', 'hist-ticket-30-708', 'prod-americano', 1, 12000, 0, '2025-11-29T15:49:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-708', 'hist-ticket-30-708', 'cash', 40500, 'completed', '2025-11-29T15:49:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-709', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-29T09:25:19.000Z', '2025-11-29T09:25:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-709-1', 'hist-ticket-30-709', 'prod-americano', 1, 12000, 0, '2025-11-29T09:25:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-709', 'hist-ticket-30-709', 'cash', 12000, 'completed', '2025-11-29T09:25:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-710', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-29T11:03:01.000Z', '2025-11-29T11:03:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-710-1', 'hist-ticket-30-710', 'prod-latte', 1, 15000, 0, '2025-11-29T11:03:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-710-2', 'hist-ticket-30-710', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T11:03:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-710-3', 'hist-ticket-30-710', 'prod-mocha', 1, 16500, 0, '2025-11-29T11:03:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-710-4', 'hist-ticket-30-710', 'prod-mocha', 1, 16500, 0, '2025-11-29T11:03:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-710', 'hist-ticket-30-710', 'cash', 62500, 'completed', '2025-11-29T11:03:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-711', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-29T18:53:01.000Z', '2025-11-29T18:53:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-711-1', 'hist-ticket-30-711', 'prod-mocha', 1, 16500, 0, '2025-11-29T18:53:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-711-2', 'hist-ticket-30-711', 'prod-americano', 1, 12000, 0, '2025-11-29T18:53:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-711-3', 'hist-ticket-30-711', 'prod-latte', 1, 15000, 0, '2025-11-29T18:53:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-711-4', 'hist-ticket-30-711', 'prod-americano', 1, 12000, 0, '2025-11-29T18:53:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-711', 'hist-ticket-30-711', 'cash', 55500, 'completed', '2025-11-29T18:53:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-712', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-29T18:01:42.000Z', '2025-11-29T18:01:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-712-1', 'hist-ticket-30-712', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T18:01:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-712-2', 'hist-ticket-30-712', 'prod-mocha', 1, 16500, 0, '2025-11-29T18:01:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-712-3', 'hist-ticket-30-712', 'prod-mocha', 1, 16500, 0, '2025-11-29T18:01:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-712-4', 'hist-ticket-30-712', 'prod-mocha', 1, 16500, 0, '2025-11-29T18:01:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-712', 'hist-ticket-30-712', 'cash', 64000, 'completed', '2025-11-29T18:01:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-713', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-29T17:54:22.000Z', '2025-11-29T17:54:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-713-1', 'hist-ticket-30-713', 'prod-latte', 1, 15000, 0, '2025-11-29T17:54:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-713', 'hist-ticket-30-713', 'cash', 15000, 'completed', '2025-11-29T17:54:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-714', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-29T11:59:34.000Z', '2025-11-29T11:59:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-714-1', 'hist-ticket-30-714', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T11:59:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-714-2', 'hist-ticket-30-714', 'prod-latte', 1, 15000, 0, '2025-11-29T11:59:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-714-3', 'hist-ticket-30-714', 'prod-americano', 1, 12000, 0, '2025-11-29T11:59:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-714-4', 'hist-ticket-30-714', 'prod-latte', 1, 15000, 0, '2025-11-29T11:59:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-714', 'hist-ticket-30-714', 'cash', 56500, 'completed', '2025-11-29T11:59:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-715', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-29T18:48:11.000Z', '2025-11-29T18:48:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-715-1', 'hist-ticket-30-715', 'prod-mocha', 1, 16500, 0, '2025-11-29T18:48:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-715-2', 'hist-ticket-30-715', 'prod-americano', 1, 12000, 0, '2025-11-29T18:48:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-715-3', 'hist-ticket-30-715', 'prod-latte', 1, 15000, 0, '2025-11-29T18:48:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-715', 'hist-ticket-30-715', 'cash', 43500, 'completed', '2025-11-29T18:48:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-716', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-29T08:58:44.000Z', '2025-11-29T08:58:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-716-1', 'hist-ticket-30-716', 'prod-latte', 1, 15000, 0, '2025-11-29T08:58:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-716', 'hist-ticket-30-716', 'cash', 15000, 'completed', '2025-11-29T08:58:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-717', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-29T09:59:32.000Z', '2025-11-29T09:59:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-717-1', 'hist-ticket-30-717', 'prod-mocha', 1, 16500, 0, '2025-11-29T09:59:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-717-2', 'hist-ticket-30-717', 'prod-mocha', 1, 16500, 0, '2025-11-29T09:59:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-717-3', 'hist-ticket-30-717', 'prod-latte', 1, 15000, 0, '2025-11-29T09:59:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-717', 'hist-ticket-30-717', 'cash', 48000, 'completed', '2025-11-29T09:59:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-718', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-29T13:03:46.000Z', '2025-11-29T13:03:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-718-1', 'hist-ticket-30-718', 'prod-latte', 1, 15000, 0, '2025-11-29T13:03:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-718-2', 'hist-ticket-30-718', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T13:03:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-718-3', 'hist-ticket-30-718', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T13:03:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-718-4', 'hist-ticket-30-718', 'prod-americano', 1, 12000, 0, '2025-11-29T13:03:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-718', 'hist-ticket-30-718', 'cash', 56000, 'completed', '2025-11-29T13:03:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-719', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2025-11-29T08:38:31.000Z', '2025-11-29T08:38:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-719-1', 'hist-ticket-30-719', 'prod-americano', 1, 12000, 0, '2025-11-29T08:38:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-719', 'hist-ticket-30-719', 'cash', 12000, 'completed', '2025-11-29T08:38:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-720', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-29T15:19:43.000Z', '2025-11-29T15:19:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-720-1', 'hist-ticket-30-720', 'prod-mocha', 1, 16500, 0, '2025-11-29T15:19:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-720', 'hist-ticket-30-720', 'cash', 16500, 'completed', '2025-11-29T15:19:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-721', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-11-29T11:22:57.000Z', '2025-11-29T11:22:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-721-1', 'hist-ticket-30-721', 'prod-mocha', 1, 16500, 0, '2025-11-29T11:22:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-721-2', 'hist-ticket-30-721', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T11:22:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-721-3', 'hist-ticket-30-721', 'prod-mocha', 1, 16500, 0, '2025-11-29T11:22:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-721', 'hist-ticket-30-721', 'cash', 47500, 'completed', '2025-11-29T11:22:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-722', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-29T15:45:39.000Z', '2025-11-29T15:45:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-722-1', 'hist-ticket-30-722', 'prod-latte', 1, 15000, 0, '2025-11-29T15:45:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-722', 'hist-ticket-30-722', 'cash', 15000, 'completed', '2025-11-29T15:45:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-723', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-29T16:20:50.000Z', '2025-11-29T16:20:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-723-1', 'hist-ticket-30-723', 'prod-mocha', 1, 16500, 0, '2025-11-29T16:20:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-723', 'hist-ticket-30-723', 'cash', 16500, 'completed', '2025-11-29T16:20:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-724', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-29T17:23:51.000Z', '2025-11-29T17:23:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-724-1', 'hist-ticket-30-724', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T17:23:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-724-2', 'hist-ticket-30-724', 'prod-latte', 1, 15000, 0, '2025-11-29T17:23:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-724-3', 'hist-ticket-30-724', 'prod-americano', 1, 12000, 0, '2025-11-29T17:23:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-724', 'hist-ticket-30-724', 'cash', 41500, 'completed', '2025-11-29T17:23:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-725', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-29T18:24:57.000Z', '2025-11-29T18:24:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-725-1', 'hist-ticket-30-725', 'prod-americano', 1, 12000, 0, '2025-11-29T18:24:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-725-2', 'hist-ticket-30-725', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T18:24:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-725-3', 'hist-ticket-30-725', 'prod-latte', 1, 15000, 0, '2025-11-29T18:24:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-725-4', 'hist-ticket-30-725', 'prod-latte', 1, 15000, 0, '2025-11-29T18:24:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-725', 'hist-ticket-30-725', 'cash', 56500, 'completed', '2025-11-29T18:24:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-726', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-29T15:32:00.000Z', '2025-11-29T15:32:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-726-1', 'hist-ticket-30-726', 'prod-latte', 1, 15000, 0, '2025-11-29T15:32:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-726-2', 'hist-ticket-30-726', 'prod-mocha', 1, 16500, 0, '2025-11-29T15:32:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-726-3', 'hist-ticket-30-726', 'prod-mocha', 1, 16500, 0, '2025-11-29T15:32:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-726-4', 'hist-ticket-30-726', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T15:32:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-726', 'hist-ticket-30-726', 'cash', 62500, 'completed', '2025-11-29T15:32:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-727', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-29T12:49:08.000Z', '2025-11-29T12:49:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-727-1', 'hist-ticket-30-727', 'prod-mocha', 1, 16500, 0, '2025-11-29T12:49:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-727', 'hist-ticket-30-727', 'cash', 16500, 'completed', '2025-11-29T12:49:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-728', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-29T16:53:01.000Z', '2025-11-29T16:53:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-728-1', 'hist-ticket-30-728', 'prod-americano', 1, 12000, 0, '2025-11-29T16:53:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-728-2', 'hist-ticket-30-728', 'prod-latte', 1, 15000, 0, '2025-11-29T16:53:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-728-3', 'hist-ticket-30-728', 'prod-mocha', 1, 16500, 0, '2025-11-29T16:53:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-728-4', 'hist-ticket-30-728', 'prod-mocha', 1, 16500, 0, '2025-11-29T16:53:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-728', 'hist-ticket-30-728', 'cash', 60000, 'completed', '2025-11-29T16:53:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-729', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-29T11:34:36.000Z', '2025-11-29T11:34:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-729-1', 'hist-ticket-30-729', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T11:34:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-729-2', 'hist-ticket-30-729', 'prod-mocha', 1, 16500, 0, '2025-11-29T11:34:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-729-3', 'hist-ticket-30-729', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T11:34:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-729', 'hist-ticket-30-729', 'cash', 45500, 'completed', '2025-11-29T11:34:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-730', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-29T11:56:21.000Z', '2025-11-29T11:56:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-730-1', 'hist-ticket-30-730', 'prod-latte', 1, 15000, 0, '2025-11-29T11:56:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-730-2', 'hist-ticket-30-730', 'prod-mocha', 1, 16500, 0, '2025-11-29T11:56:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-730-3', 'hist-ticket-30-730', 'prod-americano', 1, 12000, 0, '2025-11-29T11:56:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-730-4', 'hist-ticket-30-730', 'prod-latte', 1, 15000, 0, '2025-11-29T11:56:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-730', 'hist-ticket-30-730', 'cash', 58500, 'completed', '2025-11-29T11:56:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-731', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2025-11-29T18:24:51.000Z', '2025-11-29T18:24:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-731-1', 'hist-ticket-30-731', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T18:24:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-731-2', 'hist-ticket-30-731', 'prod-latte', 1, 15000, 0, '2025-11-29T18:24:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-731', 'hist-ticket-30-731', 'cash', 29500, 'completed', '2025-11-29T18:24:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-30-732', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-29T14:18:28.000Z', '2025-11-29T14:18:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-732-1', 'hist-ticket-30-732', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T14:18:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-732-2', 'hist-ticket-30-732', 'prod-cappuccino', 1, 14500, 0, '2025-11-29T14:18:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-732-3', 'hist-ticket-30-732', 'prod-mocha', 1, 16500, 0, '2025-11-29T14:18:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-30-732-4', 'hist-ticket-30-732', 'prod-latte', 1, 15000, 0, '2025-11-29T14:18:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-30-732', 'hist-ticket-30-732', 'cash', 60500, 'completed', '2025-11-29T14:18:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-733', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-30T12:28:35.000Z', '2025-11-30T12:28:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-733-1', 'hist-ticket-31-733', 'prod-latte', 1, 15000, 0, '2025-11-30T12:28:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-733-2', 'hist-ticket-31-733', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T12:28:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-733-3', 'hist-ticket-31-733', 'prod-mocha', 1, 16500, 0, '2025-11-30T12:28:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-733-4', 'hist-ticket-31-733', 'prod-americano', 1, 12000, 0, '2025-11-30T12:28:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-733', 'hist-ticket-31-733', 'cash', 58000, 'completed', '2025-11-30T12:28:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-734', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-30T19:32:35.000Z', '2025-11-30T19:32:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-734-1', 'hist-ticket-31-734', 'prod-mocha', 1, 16500, 0, '2025-11-30T19:32:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-734-2', 'hist-ticket-31-734', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T19:32:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-734', 'hist-ticket-31-734', 'cash', 31000, 'completed', '2025-11-30T19:32:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-735', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-30T12:11:19.000Z', '2025-11-30T12:11:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-735-1', 'hist-ticket-31-735', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T12:11:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-735-2', 'hist-ticket-31-735', 'prod-mocha', 1, 16500, 0, '2025-11-30T12:11:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-735', 'hist-ticket-31-735', 'cash', 31000, 'completed', '2025-11-30T12:11:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-736', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-30T09:13:01.000Z', '2025-11-30T09:13:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-736-1', 'hist-ticket-31-736', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T09:13:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-736-2', 'hist-ticket-31-736', 'prod-americano', 1, 12000, 0, '2025-11-30T09:13:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-736', 'hist-ticket-31-736', 'cash', 26500, 'completed', '2025-11-30T09:13:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-737', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-30T14:46:20.000Z', '2025-11-30T14:46:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-737-1', 'hist-ticket-31-737', 'prod-americano', 1, 12000, 0, '2025-11-30T14:46:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-737-2', 'hist-ticket-31-737', 'prod-mocha', 1, 16500, 0, '2025-11-30T14:46:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-737', 'hist-ticket-31-737', 'cash', 28500, 'completed', '2025-11-30T14:46:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-738', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-30T15:53:56.000Z', '2025-11-30T15:53:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-738-1', 'hist-ticket-31-738', 'prod-latte', 1, 15000, 0, '2025-11-30T15:53:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-738', 'hist-ticket-31-738', 'cash', 15000, 'completed', '2025-11-30T15:53:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-739', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-30T13:57:52.000Z', '2025-11-30T13:57:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-739-1', 'hist-ticket-31-739', 'prod-mocha', 1, 16500, 0, '2025-11-30T13:57:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-739', 'hist-ticket-31-739', 'cash', 16500, 'completed', '2025-11-30T13:57:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-740', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-30T12:28:50.000Z', '2025-11-30T12:28:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-740-1', 'hist-ticket-31-740', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T12:28:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-740', 'hist-ticket-31-740', 'cash', 14500, 'completed', '2025-11-30T12:28:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-741', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-30T19:54:15.000Z', '2025-11-30T19:54:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-741-1', 'hist-ticket-31-741', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T19:54:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-741', 'hist-ticket-31-741', 'cash', 14500, 'completed', '2025-11-30T19:54:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-742', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2025-11-30T19:37:55.000Z', '2025-11-30T19:37:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-742-1', 'hist-ticket-31-742', 'prod-mocha', 1, 16500, 0, '2025-11-30T19:37:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-742-2', 'hist-ticket-31-742', 'prod-latte', 1, 15000, 0, '2025-11-30T19:37:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-742-3', 'hist-ticket-31-742', 'prod-americano', 1, 12000, 0, '2025-11-30T19:37:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-742-4', 'hist-ticket-31-742', 'prod-latte', 1, 15000, 0, '2025-11-30T19:37:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-742', 'hist-ticket-31-742', 'cash', 58500, 'completed', '2025-11-30T19:37:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-743', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2025-11-30T18:29:43.000Z', '2025-11-30T18:29:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-743-1', 'hist-ticket-31-743', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T18:29:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-743-2', 'hist-ticket-31-743', 'prod-latte', 1, 15000, 0, '2025-11-30T18:29:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-743', 'hist-ticket-31-743', 'cash', 29500, 'completed', '2025-11-30T18:29:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-744', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-30T17:45:56.000Z', '2025-11-30T17:45:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-744-1', 'hist-ticket-31-744', 'prod-mocha', 1, 16500, 0, '2025-11-30T17:45:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-744-2', 'hist-ticket-31-744', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T17:45:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-744-3', 'hist-ticket-31-744', 'prod-latte', 1, 15000, 0, '2025-11-30T17:45:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-744-4', 'hist-ticket-31-744', 'prod-mocha', 1, 16500, 0, '2025-11-30T17:45:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-744', 'hist-ticket-31-744', 'cash', 62500, 'completed', '2025-11-30T17:45:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-745', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-30T14:17:15.000Z', '2025-11-30T14:17:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-745-1', 'hist-ticket-31-745', 'prod-mocha', 1, 16500, 0, '2025-11-30T14:17:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-745-2', 'hist-ticket-31-745', 'prod-mocha', 1, 16500, 0, '2025-11-30T14:17:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-745-3', 'hist-ticket-31-745', 'prod-latte', 1, 15000, 0, '2025-11-30T14:17:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-745-4', 'hist-ticket-31-745', 'prod-americano', 1, 12000, 0, '2025-11-30T14:17:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-745', 'hist-ticket-31-745', 'cash', 60000, 'completed', '2025-11-30T14:17:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-746', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2025-11-30T17:29:42.000Z', '2025-11-30T17:29:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-746-1', 'hist-ticket-31-746', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T17:29:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-746', 'hist-ticket-31-746', 'cash', 14500, 'completed', '2025-11-30T17:29:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-747', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-30T15:52:55.000Z', '2025-11-30T15:52:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-747-1', 'hist-ticket-31-747', 'prod-latte', 1, 15000, 0, '2025-11-30T15:52:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-747-2', 'hist-ticket-31-747', 'prod-latte', 1, 15000, 0, '2025-11-30T15:52:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-747', 'hist-ticket-31-747', 'cash', 30000, 'completed', '2025-11-30T15:52:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-748', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2025-11-30T12:07:33.000Z', '2025-11-30T12:07:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-748-1', 'hist-ticket-31-748', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T12:07:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-748-2', 'hist-ticket-31-748', 'prod-americano', 1, 12000, 0, '2025-11-30T12:07:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-748', 'hist-ticket-31-748', 'cash', 26500, 'completed', '2025-11-30T12:07:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-749', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-30T19:09:34.000Z', '2025-11-30T19:09:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-749-1', 'hist-ticket-31-749', 'prod-mocha', 1, 16500, 0, '2025-11-30T19:09:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-749', 'hist-ticket-31-749', 'cash', 16500, 'completed', '2025-11-30T19:09:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-750', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-30T12:14:59.000Z', '2025-11-30T12:14:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-750-1', 'hist-ticket-31-750', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T12:14:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-750', 'hist-ticket-31-750', 'cash', 14500, 'completed', '2025-11-30T12:14:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-751', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2025-11-30T11:22:09.000Z', '2025-11-30T11:22:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-751-1', 'hist-ticket-31-751', 'prod-mocha', 1, 16500, 0, '2025-11-30T11:22:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-751-2', 'hist-ticket-31-751', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T11:22:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-751-3', 'hist-ticket-31-751', 'prod-americano', 1, 12000, 0, '2025-11-30T11:22:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-751-4', 'hist-ticket-31-751', 'prod-latte', 1, 15000, 0, '2025-11-30T11:22:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-751', 'hist-ticket-31-751', 'cash', 58000, 'completed', '2025-11-30T11:22:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-752', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-30T15:14:31.000Z', '2025-11-30T15:14:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-752-1', 'hist-ticket-31-752', 'prod-latte', 1, 15000, 0, '2025-11-30T15:14:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-752-2', 'hist-ticket-31-752', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T15:14:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-752', 'hist-ticket-31-752', 'cash', 29500, 'completed', '2025-11-30T15:14:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-753', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2025-11-30T13:10:21.000Z', '2025-11-30T13:10:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-753-1', 'hist-ticket-31-753', 'prod-mocha', 1, 16500, 0, '2025-11-30T13:10:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-753-2', 'hist-ticket-31-753', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T13:10:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-753-3', 'hist-ticket-31-753', 'prod-latte', 1, 15000, 0, '2025-11-30T13:10:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-753-4', 'hist-ticket-31-753', 'prod-mocha', 1, 16500, 0, '2025-11-30T13:10:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-753', 'hist-ticket-31-753', 'cash', 62500, 'completed', '2025-11-30T13:10:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-754', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2025-11-30T12:57:51.000Z', '2025-11-30T12:57:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-754-1', 'hist-ticket-31-754', 'prod-americano', 1, 12000, 0, '2025-11-30T12:57:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-754-2', 'hist-ticket-31-754', 'prod-latte', 1, 15000, 0, '2025-11-30T12:57:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-754', 'hist-ticket-31-754', 'cash', 27000, 'completed', '2025-11-30T12:57:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-755', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-11-30T18:17:16.000Z', '2025-11-30T18:17:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-755-1', 'hist-ticket-31-755', 'prod-americano', 1, 12000, 0, '2025-11-30T18:17:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-755', 'hist-ticket-31-755', 'cash', 12000, 'completed', '2025-11-30T18:17:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-756', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-11-30T10:38:36.000Z', '2025-11-30T10:38:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-756-1', 'hist-ticket-31-756', 'prod-mocha', 1, 16500, 0, '2025-11-30T10:38:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-756-2', 'hist-ticket-31-756', 'prod-mocha', 1, 16500, 0, '2025-11-30T10:38:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-756-3', 'hist-ticket-31-756', 'prod-latte', 1, 15000, 0, '2025-11-30T10:38:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-756', 'hist-ticket-31-756', 'cash', 48000, 'completed', '2025-11-30T10:38:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-757', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-30T10:46:55.000Z', '2025-11-30T10:46:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-757-1', 'hist-ticket-31-757', 'prod-latte', 1, 15000, 0, '2025-11-30T10:46:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-757-2', 'hist-ticket-31-757', 'prod-americano', 1, 12000, 0, '2025-11-30T10:46:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-757-3', 'hist-ticket-31-757', 'prod-americano', 1, 12000, 0, '2025-11-30T10:46:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-757', 'hist-ticket-31-757', 'cash', 39000, 'completed', '2025-11-30T10:46:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-758', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-30T13:28:09.000Z', '2025-11-30T13:28:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-758-1', 'hist-ticket-31-758', 'prod-americano', 1, 12000, 0, '2025-11-30T13:28:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-758', 'hist-ticket-31-758', 'cash', 12000, 'completed', '2025-11-30T13:28:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-759', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-30T17:03:00.000Z', '2025-11-30T17:03:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-759-1', 'hist-ticket-31-759', 'prod-mocha', 1, 16500, 0, '2025-11-30T17:03:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-759-2', 'hist-ticket-31-759', 'prod-mocha', 1, 16500, 0, '2025-11-30T17:03:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-759-3', 'hist-ticket-31-759', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T17:03:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-759', 'hist-ticket-31-759', 'cash', 47500, 'completed', '2025-11-30T17:03:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-760', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2025-11-30T09:57:07.000Z', '2025-11-30T09:57:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-760-1', 'hist-ticket-31-760', 'prod-americano', 1, 12000, 0, '2025-11-30T09:57:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-760', 'hist-ticket-31-760', 'cash', 12000, 'completed', '2025-11-30T09:57:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-761', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-30T14:12:36.000Z', '2025-11-30T14:12:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-761-1', 'hist-ticket-31-761', 'prod-mocha', 1, 16500, 0, '2025-11-30T14:12:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-761-2', 'hist-ticket-31-761', 'prod-americano', 1, 12000, 0, '2025-11-30T14:12:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-761', 'hist-ticket-31-761', 'cash', 28500, 'completed', '2025-11-30T14:12:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-762', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-30T12:52:02.000Z', '2025-11-30T12:52:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-762-1', 'hist-ticket-31-762', 'prod-americano', 1, 12000, 0, '2025-11-30T12:52:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-762-2', 'hist-ticket-31-762', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T12:52:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-762-3', 'hist-ticket-31-762', 'prod-americano', 1, 12000, 0, '2025-11-30T12:52:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-762-4', 'hist-ticket-31-762', 'prod-mocha', 1, 16500, 0, '2025-11-30T12:52:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-762', 'hist-ticket-31-762', 'cash', 55000, 'completed', '2025-11-30T12:52:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-31-763', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-30T19:11:47.000Z', '2025-11-30T19:11:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-763-1', 'hist-ticket-31-763', 'prod-cappuccino', 1, 14500, 0, '2025-11-30T19:11:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-31-763-2', 'hist-ticket-31-763', 'prod-mocha', 1, 16500, 0, '2025-11-30T19:11:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-31-763', 'hist-ticket-31-763', 'cash', 31000, 'completed', '2025-11-30T19:11:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-764', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-01T14:45:04.000Z', '2025-12-01T14:45:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-764-1', 'hist-ticket-32-764', 'prod-latte', 1, 15000, 0, '2025-12-01T14:45:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-764', 'hist-ticket-32-764', 'cash', 15000, 'completed', '2025-12-01T14:45:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-765', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-01T13:50:21.000Z', '2025-12-01T13:50:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-765-1', 'hist-ticket-32-765', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T13:50:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-765-2', 'hist-ticket-32-765', 'prod-latte', 1, 15000, 0, '2025-12-01T13:50:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-765-3', 'hist-ticket-32-765', 'prod-americano', 1, 12000, 0, '2025-12-01T13:50:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-765', 'hist-ticket-32-765', 'cash', 41500, 'completed', '2025-12-01T13:50:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-766', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-12-01T11:10:21.000Z', '2025-12-01T11:10:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-766-1', 'hist-ticket-32-766', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T11:10:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-766-2', 'hist-ticket-32-766', 'prod-americano', 1, 12000, 0, '2025-12-01T11:10:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-766-3', 'hist-ticket-32-766', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T11:10:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-766', 'hist-ticket-32-766', 'cash', 41000, 'completed', '2025-12-01T11:10:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-767', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-12-01T10:35:28.000Z', '2025-12-01T10:35:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-767-1', 'hist-ticket-32-767', 'prod-latte', 1, 15000, 0, '2025-12-01T10:35:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-767-2', 'hist-ticket-32-767', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T10:35:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-767', 'hist-ticket-32-767', 'cash', 29500, 'completed', '2025-12-01T10:35:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-768', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2025-12-01T10:10:04.000Z', '2025-12-01T10:10:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-768-1', 'hist-ticket-32-768', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T10:10:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-768-2', 'hist-ticket-32-768', 'prod-mocha', 1, 16500, 0, '2025-12-01T10:10:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-768-3', 'hist-ticket-32-768', 'prod-mocha', 1, 16500, 0, '2025-12-01T10:10:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-768', 'hist-ticket-32-768', 'cash', 47500, 'completed', '2025-12-01T10:10:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-769', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-12-01T17:59:25.000Z', '2025-12-01T17:59:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-769-1', 'hist-ticket-32-769', 'prod-mocha', 1, 16500, 0, '2025-12-01T17:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-769-2', 'hist-ticket-32-769', 'prod-americano', 1, 12000, 0, '2025-12-01T17:59:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-769', 'hist-ticket-32-769', 'cash', 28500, 'completed', '2025-12-01T17:59:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-770', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-01T15:58:13.000Z', '2025-12-01T15:58:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-770-1', 'hist-ticket-32-770', 'prod-americano', 1, 12000, 0, '2025-12-01T15:58:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-770-2', 'hist-ticket-32-770', 'prod-mocha', 1, 16500, 0, '2025-12-01T15:58:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-770-3', 'hist-ticket-32-770', 'prod-mocha', 1, 16500, 0, '2025-12-01T15:58:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-770-4', 'hist-ticket-32-770', 'prod-americano', 1, 12000, 0, '2025-12-01T15:58:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-770', 'hist-ticket-32-770', 'cash', 57000, 'completed', '2025-12-01T15:58:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-771', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-01T14:28:24.000Z', '2025-12-01T14:28:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-771-1', 'hist-ticket-32-771', 'prod-mocha', 1, 16500, 0, '2025-12-01T14:28:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-771-2', 'hist-ticket-32-771', 'prod-latte', 1, 15000, 0, '2025-12-01T14:28:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-771', 'hist-ticket-32-771', 'cash', 31500, 'completed', '2025-12-01T14:28:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-772', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-01T08:51:55.000Z', '2025-12-01T08:51:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-772-1', 'hist-ticket-32-772', 'prod-mocha', 1, 16500, 0, '2025-12-01T08:51:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-772-2', 'hist-ticket-32-772', 'prod-mocha', 1, 16500, 0, '2025-12-01T08:51:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-772', 'hist-ticket-32-772', 'cash', 33000, 'completed', '2025-12-01T08:51:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-773', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-01T12:54:45.000Z', '2025-12-01T12:54:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-773-1', 'hist-ticket-32-773', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T12:54:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-773-2', 'hist-ticket-32-773', 'prod-americano', 1, 12000, 0, '2025-12-01T12:54:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-773-3', 'hist-ticket-32-773', 'prod-americano', 1, 12000, 0, '2025-12-01T12:54:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-773-4', 'hist-ticket-32-773', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T12:54:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-773', 'hist-ticket-32-773', 'cash', 53000, 'completed', '2025-12-01T12:54:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-774', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-01T12:22:07.000Z', '2025-12-01T12:22:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-774-1', 'hist-ticket-32-774', 'prod-americano', 1, 12000, 0, '2025-12-01T12:22:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-774-2', 'hist-ticket-32-774', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T12:22:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-774', 'hist-ticket-32-774', 'cash', 26500, 'completed', '2025-12-01T12:22:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-775', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-01T15:24:54.000Z', '2025-12-01T15:24:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-775-1', 'hist-ticket-32-775', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T15:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-775-2', 'hist-ticket-32-775', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T15:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-775-3', 'hist-ticket-32-775', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T15:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-775-4', 'hist-ticket-32-775', 'prod-latte', 1, 15000, 0, '2025-12-01T15:24:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-775', 'hist-ticket-32-775', 'cash', 58500, 'completed', '2025-12-01T15:24:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-776', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-12-01T08:33:14.000Z', '2025-12-01T08:33:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-776-1', 'hist-ticket-32-776', 'prod-americano', 1, 12000, 0, '2025-12-01T08:33:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-776', 'hist-ticket-32-776', 'cash', 12000, 'completed', '2025-12-01T08:33:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-777', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-12-01T14:39:40.000Z', '2025-12-01T14:39:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-777-1', 'hist-ticket-32-777', 'prod-latte', 1, 15000, 0, '2025-12-01T14:39:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-777', 'hist-ticket-32-777', 'cash', 15000, 'completed', '2025-12-01T14:39:40.000Z');