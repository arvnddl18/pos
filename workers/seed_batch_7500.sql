INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1667', 'hist-ticket-69-1667', 'cash', 58000, 'completed', '2026-01-07T13:13:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1668', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-07T10:15:22.000Z', '2026-01-07T10:15:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1668-1', 'hist-ticket-69-1668', 'prod-mocha', 1, 16500, 0, '2026-01-07T10:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1668-2', 'hist-ticket-69-1668', 'prod-mocha', 1, 16500, 0, '2026-01-07T10:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1668-3', 'hist-ticket-69-1668', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T10:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1668-4', 'hist-ticket-69-1668', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T10:15:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1668', 'hist-ticket-69-1668', 'cash', 62000, 'completed', '2026-01-07T10:15:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1669', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-01-07T17:59:21.000Z', '2026-01-07T17:59:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1669-1', 'hist-ticket-69-1669', 'prod-americano', 1, 12000, 0, '2026-01-07T17:59:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1669-2', 'hist-ticket-69-1669', 'prod-mocha', 1, 16500, 0, '2026-01-07T17:59:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1669-3', 'hist-ticket-69-1669', 'prod-mocha', 1, 16500, 0, '2026-01-07T17:59:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1669-4', 'hist-ticket-69-1669', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T17:59:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1669', 'hist-ticket-69-1669', 'cash', 59500, 'completed', '2026-01-07T17:59:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1670', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-01-07T19:23:53.000Z', '2026-01-07T19:23:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1670-1', 'hist-ticket-69-1670', 'prod-latte', 1, 15000, 0, '2026-01-07T19:23:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1670-2', 'hist-ticket-69-1670', 'prod-americano', 1, 12000, 0, '2026-01-07T19:23:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1670-3', 'hist-ticket-69-1670', 'prod-latte', 1, 15000, 0, '2026-01-07T19:23:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1670-4', 'hist-ticket-69-1670', 'prod-americano', 1, 12000, 0, '2026-01-07T19:23:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1670', 'hist-ticket-69-1670', 'cash', 54000, 'completed', '2026-01-07T19:23:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1671', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-01-07T09:20:35.000Z', '2026-01-07T09:20:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1671-1', 'hist-ticket-69-1671', 'prod-latte', 1, 15000, 0, '2026-01-07T09:20:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1671-2', 'hist-ticket-69-1671', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T09:20:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1671-3', 'hist-ticket-69-1671', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T09:20:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1671-4', 'hist-ticket-69-1671', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T09:20:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1671', 'hist-ticket-69-1671', 'cash', 58500, 'completed', '2026-01-07T09:20:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1672', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-07T18:39:27.000Z', '2026-01-07T18:39:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1672-1', 'hist-ticket-69-1672', 'prod-americano', 1, 12000, 0, '2026-01-07T18:39:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1672-2', 'hist-ticket-69-1672', 'prod-latte', 1, 15000, 0, '2026-01-07T18:39:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1672-3', 'hist-ticket-69-1672', 'prod-latte', 1, 15000, 0, '2026-01-07T18:39:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1672', 'hist-ticket-69-1672', 'cash', 42000, 'completed', '2026-01-07T18:39:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1673', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-01-07T08:55:53.000Z', '2026-01-07T08:55:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1673-1', 'hist-ticket-69-1673', 'prod-mocha', 1, 16500, 0, '2026-01-07T08:55:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1673', 'hist-ticket-69-1673', 'cash', 16500, 'completed', '2026-01-07T08:55:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1674', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-07T11:39:36.000Z', '2026-01-07T11:39:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1674-1', 'hist-ticket-69-1674', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T11:39:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1674-2', 'hist-ticket-69-1674', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T11:39:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1674-3', 'hist-ticket-69-1674', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T11:39:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1674-4', 'hist-ticket-69-1674', 'prod-mocha', 1, 16500, 0, '2026-01-07T11:39:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1674', 'hist-ticket-69-1674', 'cash', 60000, 'completed', '2026-01-07T11:39:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1675', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-07T11:59:39.000Z', '2026-01-07T11:59:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1675-1', 'hist-ticket-69-1675', 'prod-americano', 1, 12000, 0, '2026-01-07T11:59:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1675-2', 'hist-ticket-69-1675', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T11:59:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1675-3', 'hist-ticket-69-1675', 'prod-latte', 1, 15000, 0, '2026-01-07T11:59:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1675', 'hist-ticket-69-1675', 'cash', 41500, 'completed', '2026-01-07T11:59:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1676', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-07T18:26:00.000Z', '2026-01-07T18:26:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1676-1', 'hist-ticket-69-1676', 'prod-americano', 1, 12000, 0, '2026-01-07T18:26:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1676', 'hist-ticket-69-1676', 'cash', 12000, 'completed', '2026-01-07T18:26:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1677', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-07T16:20:18.000Z', '2026-01-07T16:20:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1677-1', 'hist-ticket-69-1677', 'prod-latte', 1, 15000, 0, '2026-01-07T16:20:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1677-2', 'hist-ticket-69-1677', 'prod-latte', 1, 15000, 0, '2026-01-07T16:20:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1677-3', 'hist-ticket-69-1677', 'prod-latte', 1, 15000, 0, '2026-01-07T16:20:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1677', 'hist-ticket-69-1677', 'cash', 45000, 'completed', '2026-01-07T16:20:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1678', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-07T10:21:38.000Z', '2026-01-07T10:21:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1678-1', 'hist-ticket-69-1678', 'prod-americano', 1, 12000, 0, '2026-01-07T10:21:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1678-2', 'hist-ticket-69-1678', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T10:21:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1678-3', 'hist-ticket-69-1678', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T10:21:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1678', 'hist-ticket-69-1678', 'cash', 41000, 'completed', '2026-01-07T10:21:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1679', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-01-07T13:00:10.000Z', '2026-01-07T13:00:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1679-1', 'hist-ticket-69-1679', 'prod-latte', 1, 15000, 0, '2026-01-07T13:00:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1679-2', 'hist-ticket-69-1679', 'prod-mocha', 1, 16500, 0, '2026-01-07T13:00:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1679-3', 'hist-ticket-69-1679', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T13:00:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1679-4', 'hist-ticket-69-1679', 'prod-americano', 1, 12000, 0, '2026-01-07T13:00:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1679', 'hist-ticket-69-1679', 'cash', 58000, 'completed', '2026-01-07T13:00:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1680', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-07T19:13:01.000Z', '2026-01-07T19:13:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1680-1', 'hist-ticket-69-1680', 'prod-mocha', 1, 16500, 0, '2026-01-07T19:13:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1680', 'hist-ticket-69-1680', 'cash', 16500, 'completed', '2026-01-07T19:13:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1681', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-01-07T19:04:32.000Z', '2026-01-07T19:04:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1681-1', 'hist-ticket-69-1681', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T19:04:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1681-2', 'hist-ticket-69-1681', 'prod-latte', 1, 15000, 0, '2026-01-07T19:04:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1681-3', 'hist-ticket-69-1681', 'prod-mocha', 1, 16500, 0, '2026-01-07T19:04:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1681', 'hist-ticket-69-1681', 'cash', 46000, 'completed', '2026-01-07T19:04:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1682', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-01-07T18:54:20.000Z', '2026-01-07T18:54:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1682-1', 'hist-ticket-69-1682', 'prod-americano', 1, 12000, 0, '2026-01-07T18:54:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1682-2', 'hist-ticket-69-1682', 'prod-mocha', 1, 16500, 0, '2026-01-07T18:54:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1682', 'hist-ticket-69-1682', 'cash', 28500, 'completed', '2026-01-07T18:54:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1683', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-07T15:58:54.000Z', '2026-01-07T15:58:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1683-1', 'hist-ticket-69-1683', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T15:58:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1683-2', 'hist-ticket-69-1683', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T15:58:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1683-3', 'hist-ticket-69-1683', 'prod-mocha', 1, 16500, 0, '2026-01-07T15:58:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1683', 'hist-ticket-69-1683', 'cash', 45500, 'completed', '2026-01-07T15:58:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1684', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-08T16:58:01.000Z', '2026-01-08T16:58:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1684-1', 'hist-ticket-70-1684', 'prod-americano', 1, 12000, 0, '2026-01-08T16:58:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1684-2', 'hist-ticket-70-1684', 'prod-americano', 1, 12000, 0, '2026-01-08T16:58:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1684-3', 'hist-ticket-70-1684', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T16:58:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1684-4', 'hist-ticket-70-1684', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T16:58:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1684', 'hist-ticket-70-1684', 'cash', 53000, 'completed', '2026-01-08T16:58:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1685', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-08T17:12:37.000Z', '2026-01-08T17:12:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1685-1', 'hist-ticket-70-1685', 'prod-latte', 1, 15000, 0, '2026-01-08T17:12:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1685-2', 'hist-ticket-70-1685', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T17:12:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1685-3', 'hist-ticket-70-1685', 'prod-latte', 1, 15000, 0, '2026-01-08T17:12:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1685-4', 'hist-ticket-70-1685', 'prod-latte', 1, 15000, 0, '2026-01-08T17:12:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1685', 'hist-ticket-70-1685', 'cash', 59500, 'completed', '2026-01-08T17:12:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1686', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-08T12:14:40.000Z', '2026-01-08T12:14:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1686-1', 'hist-ticket-70-1686', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T12:14:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1686', 'hist-ticket-70-1686', 'cash', 14500, 'completed', '2026-01-08T12:14:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1687', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-08T08:09:18.000Z', '2026-01-08T08:09:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1687-1', 'hist-ticket-70-1687', 'prod-americano', 1, 12000, 0, '2026-01-08T08:09:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1687', 'hist-ticket-70-1687', 'cash', 12000, 'completed', '2026-01-08T08:09:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1688', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-08T13:07:22.000Z', '2026-01-08T13:07:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1688-1', 'hist-ticket-70-1688', 'prod-americano', 1, 12000, 0, '2026-01-08T13:07:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1688-2', 'hist-ticket-70-1688', 'prod-latte', 1, 15000, 0, '2026-01-08T13:07:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1688-3', 'hist-ticket-70-1688', 'prod-americano', 1, 12000, 0, '2026-01-08T13:07:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1688', 'hist-ticket-70-1688', 'cash', 39000, 'completed', '2026-01-08T13:07:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1689', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-01-08T13:59:03.000Z', '2026-01-08T13:59:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1689-1', 'hist-ticket-70-1689', 'prod-mocha', 1, 16500, 0, '2026-01-08T13:59:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1689-2', 'hist-ticket-70-1689', 'prod-mocha', 1, 16500, 0, '2026-01-08T13:59:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1689-3', 'hist-ticket-70-1689', 'prod-latte', 1, 15000, 0, '2026-01-08T13:59:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1689', 'hist-ticket-70-1689', 'cash', 48000, 'completed', '2026-01-08T13:59:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1690', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-08T09:23:08.000Z', '2026-01-08T09:23:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1690-1', 'hist-ticket-70-1690', 'prod-mocha', 1, 16500, 0, '2026-01-08T09:23:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1690-2', 'hist-ticket-70-1690', 'prod-latte', 1, 15000, 0, '2026-01-08T09:23:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1690', 'hist-ticket-70-1690', 'cash', 31500, 'completed', '2026-01-08T09:23:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1691', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-08T17:40:30.000Z', '2026-01-08T17:40:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1691-1', 'hist-ticket-70-1691', 'prod-americano', 1, 12000, 0, '2026-01-08T17:40:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1691-2', 'hist-ticket-70-1691', 'prod-mocha', 1, 16500, 0, '2026-01-08T17:40:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1691', 'hist-ticket-70-1691', 'cash', 28500, 'completed', '2026-01-08T17:40:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1692', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-01-08T09:52:50.000Z', '2026-01-08T09:52:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1692-1', 'hist-ticket-70-1692', 'prod-latte', 1, 15000, 0, '2026-01-08T09:52:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1692-2', 'hist-ticket-70-1692', 'prod-americano', 1, 12000, 0, '2026-01-08T09:52:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1692', 'hist-ticket-70-1692', 'cash', 27000, 'completed', '2026-01-08T09:52:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1693', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-08T18:06:01.000Z', '2026-01-08T18:06:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1693-1', 'hist-ticket-70-1693', 'prod-americano', 1, 12000, 0, '2026-01-08T18:06:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1693-2', 'hist-ticket-70-1693', 'prod-latte', 1, 15000, 0, '2026-01-08T18:06:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1693-3', 'hist-ticket-70-1693', 'prod-americano', 1, 12000, 0, '2026-01-08T18:06:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1693-4', 'hist-ticket-70-1693', 'prod-latte', 1, 15000, 0, '2026-01-08T18:06:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1693', 'hist-ticket-70-1693', 'cash', 54000, 'completed', '2026-01-08T18:06:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1694', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-01-08T11:00:51.000Z', '2026-01-08T11:00:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1694-1', 'hist-ticket-70-1694', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T11:00:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1694-2', 'hist-ticket-70-1694', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T11:00:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1694-3', 'hist-ticket-70-1694', 'prod-mocha', 1, 16500, 0, '2026-01-08T11:00:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1694-4', 'hist-ticket-70-1694', 'prod-latte', 1, 15000, 0, '2026-01-08T11:00:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1694', 'hist-ticket-70-1694', 'cash', 60500, 'completed', '2026-01-08T11:00:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1695', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-01-08T09:12:20.000Z', '2026-01-08T09:12:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1695-1', 'hist-ticket-70-1695', 'prod-americano', 1, 12000, 0, '2026-01-08T09:12:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1695-2', 'hist-ticket-70-1695', 'prod-latte', 1, 15000, 0, '2026-01-08T09:12:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1695-3', 'hist-ticket-70-1695', 'prod-mocha', 1, 16500, 0, '2026-01-08T09:12:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1695', 'hist-ticket-70-1695', 'cash', 43500, 'completed', '2026-01-08T09:12:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1696', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-08T14:49:30.000Z', '2026-01-08T14:49:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1696-1', 'hist-ticket-70-1696', 'prod-americano', 1, 12000, 0, '2026-01-08T14:49:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1696', 'hist-ticket-70-1696', 'cash', 12000, 'completed', '2026-01-08T14:49:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1697', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-08T08:10:13.000Z', '2026-01-08T08:10:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1697-1', 'hist-ticket-70-1697', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T08:10:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1697', 'hist-ticket-70-1697', 'cash', 14500, 'completed', '2026-01-08T08:10:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1698', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-08T14:11:36.000Z', '2026-01-08T14:11:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1698-1', 'hist-ticket-70-1698', 'prod-mocha', 1, 16500, 0, '2026-01-08T14:11:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1698-2', 'hist-ticket-70-1698', 'prod-mocha', 1, 16500, 0, '2026-01-08T14:11:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1698-3', 'hist-ticket-70-1698', 'prod-americano', 1, 12000, 0, '2026-01-08T14:11:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1698-4', 'hist-ticket-70-1698', 'prod-mocha', 1, 16500, 0, '2026-01-08T14:11:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1698', 'hist-ticket-70-1698', 'cash', 61500, 'completed', '2026-01-08T14:11:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1699', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-01-08T19:01:01.000Z', '2026-01-08T19:01:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1699-1', 'hist-ticket-70-1699', 'prod-americano', 1, 12000, 0, '2026-01-08T19:01:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1699-2', 'hist-ticket-70-1699', 'prod-americano', 1, 12000, 0, '2026-01-08T19:01:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1699-3', 'hist-ticket-70-1699', 'prod-latte', 1, 15000, 0, '2026-01-08T19:01:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1699-4', 'hist-ticket-70-1699', 'prod-latte', 1, 15000, 0, '2026-01-08T19:01:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1699', 'hist-ticket-70-1699', 'cash', 54000, 'completed', '2026-01-08T19:01:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1700', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-08T15:03:55.000Z', '2026-01-08T15:03:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1700-1', 'hist-ticket-70-1700', 'prod-mocha', 1, 16500, 0, '2026-01-08T15:03:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1700-2', 'hist-ticket-70-1700', 'prod-mocha', 1, 16500, 0, '2026-01-08T15:03:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1700', 'hist-ticket-70-1700', 'cash', 33000, 'completed', '2026-01-08T15:03:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1701', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-01-08T09:12:39.000Z', '2026-01-08T09:12:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1701-1', 'hist-ticket-70-1701', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T09:12:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1701-2', 'hist-ticket-70-1701', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T09:12:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1701', 'hist-ticket-70-1701', 'cash', 29000, 'completed', '2026-01-08T09:12:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1702', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-01-08T12:26:52.000Z', '2026-01-08T12:26:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1702-1', 'hist-ticket-70-1702', 'prod-americano', 1, 12000, 0, '2026-01-08T12:26:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1702-2', 'hist-ticket-70-1702', 'prod-americano', 1, 12000, 0, '2026-01-08T12:26:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1702', 'hist-ticket-70-1702', 'cash', 24000, 'completed', '2026-01-08T12:26:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1703', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-08T18:19:21.000Z', '2026-01-08T18:19:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1703-1', 'hist-ticket-70-1703', 'prod-latte', 1, 15000, 0, '2026-01-08T18:19:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1703-2', 'hist-ticket-70-1703', 'prod-latte', 1, 15000, 0, '2026-01-08T18:19:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1703-3', 'hist-ticket-70-1703', 'prod-mocha', 1, 16500, 0, '2026-01-08T18:19:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1703-4', 'hist-ticket-70-1703', 'prod-latte', 1, 15000, 0, '2026-01-08T18:19:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1703', 'hist-ticket-70-1703', 'cash', 61500, 'completed', '2026-01-08T18:19:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1704', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-01-08T18:28:25.000Z', '2026-01-08T18:28:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1704-1', 'hist-ticket-70-1704', 'prod-americano', 1, 12000, 0, '2026-01-08T18:28:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1704-2', 'hist-ticket-70-1704', 'prod-mocha', 1, 16500, 0, '2026-01-08T18:28:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1704-3', 'hist-ticket-70-1704', 'prod-latte', 1, 15000, 0, '2026-01-08T18:28:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1704-4', 'hist-ticket-70-1704', 'prod-latte', 1, 15000, 0, '2026-01-08T18:28:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1704', 'hist-ticket-70-1704', 'cash', 58500, 'completed', '2026-01-08T18:28:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1705', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-08T08:41:52.000Z', '2026-01-08T08:41:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1705-1', 'hist-ticket-70-1705', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T08:41:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1705', 'hist-ticket-70-1705', 'cash', 14500, 'completed', '2026-01-08T08:41:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1706', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-08T19:23:46.000Z', '2026-01-08T19:23:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1706-1', 'hist-ticket-70-1706', 'prod-latte', 1, 15000, 0, '2026-01-08T19:23:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1706-2', 'hist-ticket-70-1706', 'prod-latte', 1, 15000, 0, '2026-01-08T19:23:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1706-3', 'hist-ticket-70-1706', 'prod-latte', 1, 15000, 0, '2026-01-08T19:23:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1706-4', 'hist-ticket-70-1706', 'prod-mocha', 1, 16500, 0, '2026-01-08T19:23:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1706', 'hist-ticket-70-1706', 'cash', 61500, 'completed', '2026-01-08T19:23:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1707', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-08T11:21:03.000Z', '2026-01-08T11:21:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1707-1', 'hist-ticket-70-1707', 'prod-americano', 1, 12000, 0, '2026-01-08T11:21:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1707-2', 'hist-ticket-70-1707', 'prod-latte', 1, 15000, 0, '2026-01-08T11:21:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1707-3', 'hist-ticket-70-1707', 'prod-americano', 1, 12000, 0, '2026-01-08T11:21:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1707', 'hist-ticket-70-1707', 'cash', 39000, 'completed', '2026-01-08T11:21:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-70-1708', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-01-08T13:28:26.000Z', '2026-01-08T13:28:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1708-1', 'hist-ticket-70-1708', 'prod-americano', 1, 12000, 0, '2026-01-08T13:28:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1708-2', 'hist-ticket-70-1708', 'prod-americano', 1, 12000, 0, '2026-01-08T13:28:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-70-1708-3', 'hist-ticket-70-1708', 'prod-cappuccino', 1, 14500, 0, '2026-01-08T13:28:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-70-1708', 'hist-ticket-70-1708', 'cash', 38500, 'completed', '2026-01-08T13:28:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1709', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-01-09T10:06:57.000Z', '2026-01-09T10:06:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1709-1', 'hist-ticket-71-1709', 'prod-latte', 1, 15000, 0, '2026-01-09T10:06:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1709-2', 'hist-ticket-71-1709', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T10:06:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1709', 'hist-ticket-71-1709', 'cash', 29500, 'completed', '2026-01-09T10:06:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1710', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-09T11:31:32.000Z', '2026-01-09T11:31:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1710-1', 'hist-ticket-71-1710', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T11:31:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1710', 'hist-ticket-71-1710', 'cash', 14500, 'completed', '2026-01-09T11:31:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1711', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-09T13:43:02.000Z', '2026-01-09T13:43:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1711-1', 'hist-ticket-71-1711', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T13:43:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1711-2', 'hist-ticket-71-1711', 'prod-americano', 1, 12000, 0, '2026-01-09T13:43:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1711', 'hist-ticket-71-1711', 'cash', 26500, 'completed', '2026-01-09T13:43:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1712', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-09T14:17:25.000Z', '2026-01-09T14:17:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1712-1', 'hist-ticket-71-1712', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T14:17:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1712-2', 'hist-ticket-71-1712', 'prod-latte', 1, 15000, 0, '2026-01-09T14:17:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1712-3', 'hist-ticket-71-1712', 'prod-americano', 1, 12000, 0, '2026-01-09T14:17:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1712', 'hist-ticket-71-1712', 'cash', 41500, 'completed', '2026-01-09T14:17:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1713', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-09T10:29:09.000Z', '2026-01-09T10:29:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1713-1', 'hist-ticket-71-1713', 'prod-latte', 1, 15000, 0, '2026-01-09T10:29:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1713-2', 'hist-ticket-71-1713', 'prod-americano', 1, 12000, 0, '2026-01-09T10:29:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1713-3', 'hist-ticket-71-1713', 'prod-mocha', 1, 16500, 0, '2026-01-09T10:29:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1713', 'hist-ticket-71-1713', 'cash', 43500, 'completed', '2026-01-09T10:29:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1714', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-01-09T16:31:52.000Z', '2026-01-09T16:31:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1714-1', 'hist-ticket-71-1714', 'prod-mocha', 1, 16500, 0, '2026-01-09T16:31:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1714-2', 'hist-ticket-71-1714', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T16:31:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1714-3', 'hist-ticket-71-1714', 'prod-mocha', 1, 16500, 0, '2026-01-09T16:31:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1714', 'hist-ticket-71-1714', 'cash', 47500, 'completed', '2026-01-09T16:31:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1715', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-09T10:05:44.000Z', '2026-01-09T10:05:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1715-1', 'hist-ticket-71-1715', 'prod-latte', 1, 15000, 0, '2026-01-09T10:05:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1715-2', 'hist-ticket-71-1715', 'prod-mocha', 1, 16500, 0, '2026-01-09T10:05:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1715', 'hist-ticket-71-1715', 'cash', 31500, 'completed', '2026-01-09T10:05:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1716', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-01-09T16:32:22.000Z', '2026-01-09T16:32:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1716-1', 'hist-ticket-71-1716', 'prod-mocha', 1, 16500, 0, '2026-01-09T16:32:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1716-2', 'hist-ticket-71-1716', 'prod-americano', 1, 12000, 0, '2026-01-09T16:32:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1716-3', 'hist-ticket-71-1716', 'prod-americano', 1, 12000, 0, '2026-01-09T16:32:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1716-4', 'hist-ticket-71-1716', 'prod-americano', 1, 12000, 0, '2026-01-09T16:32:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1716', 'hist-ticket-71-1716', 'cash', 52500, 'completed', '2026-01-09T16:32:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1717', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-09T14:20:21.000Z', '2026-01-09T14:20:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1717-1', 'hist-ticket-71-1717', 'prod-americano', 1, 12000, 0, '2026-01-09T14:20:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1717-2', 'hist-ticket-71-1717', 'prod-mocha', 1, 16500, 0, '2026-01-09T14:20:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1717-3', 'hist-ticket-71-1717', 'prod-latte', 1, 15000, 0, '2026-01-09T14:20:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1717', 'hist-ticket-71-1717', 'cash', 43500, 'completed', '2026-01-09T14:20:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1718', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-09T12:40:48.000Z', '2026-01-09T12:40:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1718-1', 'hist-ticket-71-1718', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T12:40:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1718-2', 'hist-ticket-71-1718', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T12:40:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1718', 'hist-ticket-71-1718', 'cash', 29000, 'completed', '2026-01-09T12:40:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1719', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-01-09T10:24:15.000Z', '2026-01-09T10:24:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1719-1', 'hist-ticket-71-1719', 'prod-latte', 1, 15000, 0, '2026-01-09T10:24:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1719-2', 'hist-ticket-71-1719', 'prod-latte', 1, 15000, 0, '2026-01-09T10:24:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1719-3', 'hist-ticket-71-1719', 'prod-americano', 1, 12000, 0, '2026-01-09T10:24:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1719', 'hist-ticket-71-1719', 'cash', 42000, 'completed', '2026-01-09T10:24:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1720', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-01-09T09:08:40.000Z', '2026-01-09T09:08:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1720-1', 'hist-ticket-71-1720', 'prod-latte', 1, 15000, 0, '2026-01-09T09:08:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1720-2', 'hist-ticket-71-1720', 'prod-latte', 1, 15000, 0, '2026-01-09T09:08:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1720-3', 'hist-ticket-71-1720', 'prod-mocha', 1, 16500, 0, '2026-01-09T09:08:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1720', 'hist-ticket-71-1720', 'cash', 46500, 'completed', '2026-01-09T09:08:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1721', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-09T19:12:05.000Z', '2026-01-09T19:12:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1721-1', 'hist-ticket-71-1721', 'prod-americano', 1, 12000, 0, '2026-01-09T19:12:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1721', 'hist-ticket-71-1721', 'cash', 12000, 'completed', '2026-01-09T19:12:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1722', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-09T19:39:25.000Z', '2026-01-09T19:39:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1722-1', 'hist-ticket-71-1722', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T19:39:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1722-2', 'hist-ticket-71-1722', 'prod-mocha', 1, 16500, 0, '2026-01-09T19:39:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1722-3', 'hist-ticket-71-1722', 'prod-americano', 1, 12000, 0, '2026-01-09T19:39:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1722', 'hist-ticket-71-1722', 'cash', 43000, 'completed', '2026-01-09T19:39:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1723', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-09T15:43:46.000Z', '2026-01-09T15:43:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1723-1', 'hist-ticket-71-1723', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T15:43:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1723-2', 'hist-ticket-71-1723', 'prod-americano', 1, 12000, 0, '2026-01-09T15:43:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1723-3', 'hist-ticket-71-1723', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T15:43:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1723', 'hist-ticket-71-1723', 'cash', 41000, 'completed', '2026-01-09T15:43:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1724', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-09T16:08:22.000Z', '2026-01-09T16:08:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1724-1', 'hist-ticket-71-1724', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T16:08:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1724-2', 'hist-ticket-71-1724', 'prod-mocha', 1, 16500, 0, '2026-01-09T16:08:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1724-3', 'hist-ticket-71-1724', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T16:08:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1724-4', 'hist-ticket-71-1724', 'prod-mocha', 1, 16500, 0, '2026-01-09T16:08:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1724', 'hist-ticket-71-1724', 'cash', 62000, 'completed', '2026-01-09T16:08:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1725', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-09T11:13:01.000Z', '2026-01-09T11:13:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1725-1', 'hist-ticket-71-1725', 'prod-latte', 1, 15000, 0, '2026-01-09T11:13:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1725', 'hist-ticket-71-1725', 'cash', 15000, 'completed', '2026-01-09T11:13:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1726', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-09T11:11:40.000Z', '2026-01-09T11:11:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1726-1', 'hist-ticket-71-1726', 'prod-latte', 1, 15000, 0, '2026-01-09T11:11:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1726-2', 'hist-ticket-71-1726', 'prod-latte', 1, 15000, 0, '2026-01-09T11:11:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1726', 'hist-ticket-71-1726', 'cash', 30000, 'completed', '2026-01-09T11:11:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1727', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-09T09:39:07.000Z', '2026-01-09T09:39:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1727-1', 'hist-ticket-71-1727', 'prod-mocha', 1, 16500, 0, '2026-01-09T09:39:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1727-2', 'hist-ticket-71-1727', 'prod-americano', 1, 12000, 0, '2026-01-09T09:39:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1727', 'hist-ticket-71-1727', 'cash', 28500, 'completed', '2026-01-09T09:39:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-71-1728', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-09T08:34:40.000Z', '2026-01-09T08:34:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1728-1', 'hist-ticket-71-1728', 'prod-mocha', 1, 16500, 0, '2026-01-09T08:34:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1728-2', 'hist-ticket-71-1728', 'prod-americano', 1, 12000, 0, '2026-01-09T08:34:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1728-3', 'hist-ticket-71-1728', 'prod-cappuccino', 1, 14500, 0, '2026-01-09T08:34:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-71-1728-4', 'hist-ticket-71-1728', 'prod-mocha', 1, 16500, 0, '2026-01-09T08:34:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-71-1728', 'hist-ticket-71-1728', 'cash', 59500, 'completed', '2026-01-09T08:34:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1729', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-01-10T19:24:41.000Z', '2026-01-10T19:24:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1729-1', 'hist-ticket-72-1729', 'prod-mocha', 1, 16500, 0, '2026-01-10T19:24:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1729-2', 'hist-ticket-72-1729', 'prod-mocha', 1, 16500, 0, '2026-01-10T19:24:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1729-3', 'hist-ticket-72-1729', 'prod-americano', 1, 12000, 0, '2026-01-10T19:24:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1729', 'hist-ticket-72-1729', 'cash', 45000, 'completed', '2026-01-10T19:24:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1730', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-10T08:53:12.000Z', '2026-01-10T08:53:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1730-1', 'hist-ticket-72-1730', 'prod-mocha', 1, 16500, 0, '2026-01-10T08:53:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1730-2', 'hist-ticket-72-1730', 'prod-latte', 1, 15000, 0, '2026-01-10T08:53:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1730', 'hist-ticket-72-1730', 'cash', 31500, 'completed', '2026-01-10T08:53:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1731', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-01-10T15:08:42.000Z', '2026-01-10T15:08:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1731-1', 'hist-ticket-72-1731', 'prod-mocha', 1, 16500, 0, '2026-01-10T15:08:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1731', 'hist-ticket-72-1731', 'cash', 16500, 'completed', '2026-01-10T15:08:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1732', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-10T11:03:20.000Z', '2026-01-10T11:03:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1732-1', 'hist-ticket-72-1732', 'prod-latte', 1, 15000, 0, '2026-01-10T11:03:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1732-2', 'hist-ticket-72-1732', 'prod-latte', 1, 15000, 0, '2026-01-10T11:03:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1732', 'hist-ticket-72-1732', 'cash', 30000, 'completed', '2026-01-10T11:03:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1733', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-10T18:45:13.000Z', '2026-01-10T18:45:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1733-1', 'hist-ticket-72-1733', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T18:45:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1733', 'hist-ticket-72-1733', 'cash', 14500, 'completed', '2026-01-10T18:45:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1734', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-10T13:25:09.000Z', '2026-01-10T13:25:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1734-1', 'hist-ticket-72-1734', 'prod-americano', 1, 12000, 0, '2026-01-10T13:25:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1734-2', 'hist-ticket-72-1734', 'prod-americano', 1, 12000, 0, '2026-01-10T13:25:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1734-3', 'hist-ticket-72-1734', 'prod-americano', 1, 12000, 0, '2026-01-10T13:25:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1734-4', 'hist-ticket-72-1734', 'prod-mocha', 1, 16500, 0, '2026-01-10T13:25:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1734', 'hist-ticket-72-1734', 'cash', 52500, 'completed', '2026-01-10T13:25:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1735', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-10T13:01:00.000Z', '2026-01-10T13:01:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1735-1', 'hist-ticket-72-1735', 'prod-mocha', 1, 16500, 0, '2026-01-10T13:01:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1735-2', 'hist-ticket-72-1735', 'prod-mocha', 1, 16500, 0, '2026-01-10T13:01:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1735-3', 'hist-ticket-72-1735', 'prod-mocha', 1, 16500, 0, '2026-01-10T13:01:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1735-4', 'hist-ticket-72-1735', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T13:01:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1735', 'hist-ticket-72-1735', 'cash', 64000, 'completed', '2026-01-10T13:01:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1736', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-10T16:39:00.000Z', '2026-01-10T16:39:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1736-1', 'hist-ticket-72-1736', 'prod-mocha', 1, 16500, 0, '2026-01-10T16:39:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1736-2', 'hist-ticket-72-1736', 'prod-americano', 1, 12000, 0, '2026-01-10T16:39:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1736-3', 'hist-ticket-72-1736', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T16:39:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1736', 'hist-ticket-72-1736', 'cash', 43000, 'completed', '2026-01-10T16:39:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1737', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-10T19:48:20.000Z', '2026-01-10T19:48:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1737-1', 'hist-ticket-72-1737', 'prod-mocha', 1, 16500, 0, '2026-01-10T19:48:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1737-2', 'hist-ticket-72-1737', 'prod-americano', 1, 12000, 0, '2026-01-10T19:48:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1737-3', 'hist-ticket-72-1737', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T19:48:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1737-4', 'hist-ticket-72-1737', 'prod-latte', 1, 15000, 0, '2026-01-10T19:48:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1737', 'hist-ticket-72-1737', 'cash', 58000, 'completed', '2026-01-10T19:48:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1738', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-01-10T13:37:34.000Z', '2026-01-10T13:37:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1738-1', 'hist-ticket-72-1738', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T13:37:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1738', 'hist-ticket-72-1738', 'cash', 14500, 'completed', '2026-01-10T13:37:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1739', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-10T13:42:30.000Z', '2026-01-10T13:42:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1739-1', 'hist-ticket-72-1739', 'prod-mocha', 1, 16500, 0, '2026-01-10T13:42:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1739-2', 'hist-ticket-72-1739', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T13:42:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1739-3', 'hist-ticket-72-1739', 'prod-mocha', 1, 16500, 0, '2026-01-10T13:42:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1739-4', 'hist-ticket-72-1739', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T13:42:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1739', 'hist-ticket-72-1739', 'cash', 62000, 'completed', '2026-01-10T13:42:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1740', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-10T14:50:56.000Z', '2026-01-10T14:50:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1740-1', 'hist-ticket-72-1740', 'prod-mocha', 1, 16500, 0, '2026-01-10T14:50:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1740-2', 'hist-ticket-72-1740', 'prod-americano', 1, 12000, 0, '2026-01-10T14:50:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1740-3', 'hist-ticket-72-1740', 'prod-mocha', 1, 16500, 0, '2026-01-10T14:50:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1740-4', 'hist-ticket-72-1740', 'prod-mocha', 1, 16500, 0, '2026-01-10T14:50:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1740', 'hist-ticket-72-1740', 'cash', 61500, 'completed', '2026-01-10T14:50:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1741', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-10T08:03:36.000Z', '2026-01-10T08:03:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1741-1', 'hist-ticket-72-1741', 'prod-americano', 1, 12000, 0, '2026-01-10T08:03:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1741-2', 'hist-ticket-72-1741', 'prod-mocha', 1, 16500, 0, '2026-01-10T08:03:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1741-3', 'hist-ticket-72-1741', 'prod-americano', 1, 12000, 0, '2026-01-10T08:03:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1741-4', 'hist-ticket-72-1741', 'prod-americano', 1, 12000, 0, '2026-01-10T08:03:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1741', 'hist-ticket-72-1741', 'cash', 52500, 'completed', '2026-01-10T08:03:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1742', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-10T17:03:45.000Z', '2026-01-10T17:03:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1742-1', 'hist-ticket-72-1742', 'prod-mocha', 1, 16500, 0, '2026-01-10T17:03:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1742', 'hist-ticket-72-1742', 'cash', 16500, 'completed', '2026-01-10T17:03:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1743', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-10T09:41:51.000Z', '2026-01-10T09:41:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1743-1', 'hist-ticket-72-1743', 'prod-latte', 1, 15000, 0, '2026-01-10T09:41:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1743', 'hist-ticket-72-1743', 'cash', 15000, 'completed', '2026-01-10T09:41:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1744', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-10T14:42:37.000Z', '2026-01-10T14:42:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1744-1', 'hist-ticket-72-1744', 'prod-latte', 1, 15000, 0, '2026-01-10T14:42:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1744-2', 'hist-ticket-72-1744', 'prod-latte', 1, 15000, 0, '2026-01-10T14:42:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1744-3', 'hist-ticket-72-1744', 'prod-latte', 1, 15000, 0, '2026-01-10T14:42:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1744-4', 'hist-ticket-72-1744', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T14:42:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1744', 'hist-ticket-72-1744', 'cash', 59500, 'completed', '2026-01-10T14:42:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1745', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-01-10T15:16:38.000Z', '2026-01-10T15:16:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1745-1', 'hist-ticket-72-1745', 'prod-americano', 1, 12000, 0, '2026-01-10T15:16:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1745-2', 'hist-ticket-72-1745', 'prod-latte', 1, 15000, 0, '2026-01-10T15:16:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1745', 'hist-ticket-72-1745', 'cash', 27000, 'completed', '2026-01-10T15:16:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1746', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-10T17:17:05.000Z', '2026-01-10T17:17:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1746-1', 'hist-ticket-72-1746', 'prod-latte', 1, 15000, 0, '2026-01-10T17:17:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1746-2', 'hist-ticket-72-1746', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T17:17:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1746-3', 'hist-ticket-72-1746', 'prod-latte', 1, 15000, 0, '2026-01-10T17:17:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1746', 'hist-ticket-72-1746', 'cash', 44500, 'completed', '2026-01-10T17:17:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1747', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-10T13:00:47.000Z', '2026-01-10T13:00:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1747-1', 'hist-ticket-72-1747', 'prod-americano', 1, 12000, 0, '2026-01-10T13:00:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1747-2', 'hist-ticket-72-1747', 'prod-americano', 1, 12000, 0, '2026-01-10T13:00:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1747', 'hist-ticket-72-1747', 'cash', 24000, 'completed', '2026-01-10T13:00:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1748', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-10T14:06:11.000Z', '2026-01-10T14:06:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1748-1', 'hist-ticket-72-1748', 'prod-mocha', 1, 16500, 0, '2026-01-10T14:06:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1748', 'hist-ticket-72-1748', 'cash', 16500, 'completed', '2026-01-10T14:06:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1749', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-10T12:21:29.000Z', '2026-01-10T12:21:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1749-1', 'hist-ticket-72-1749', 'prod-mocha', 1, 16500, 0, '2026-01-10T12:21:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1749', 'hist-ticket-72-1749', 'cash', 16500, 'completed', '2026-01-10T12:21:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1750', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-01-10T15:39:10.000Z', '2026-01-10T15:39:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1750-1', 'hist-ticket-72-1750', 'prod-latte', 1, 15000, 0, '2026-01-10T15:39:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1750-2', 'hist-ticket-72-1750', 'prod-latte', 1, 15000, 0, '2026-01-10T15:39:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1750-3', 'hist-ticket-72-1750', 'prod-mocha', 1, 16500, 0, '2026-01-10T15:39:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1750', 'hist-ticket-72-1750', 'cash', 46500, 'completed', '2026-01-10T15:39:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1751', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-01-10T16:26:20.000Z', '2026-01-10T16:26:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1751-1', 'hist-ticket-72-1751', 'prod-mocha', 1, 16500, 0, '2026-01-10T16:26:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1751', 'hist-ticket-72-1751', 'cash', 16500, 'completed', '2026-01-10T16:26:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1752', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-01-10T09:48:48.000Z', '2026-01-10T09:48:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1752-1', 'hist-ticket-72-1752', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T09:48:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1752-2', 'hist-ticket-72-1752', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T09:48:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1752-3', 'hist-ticket-72-1752', 'prod-mocha', 1, 16500, 0, '2026-01-10T09:48:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1752-4', 'hist-ticket-72-1752', 'prod-mocha', 1, 16500, 0, '2026-01-10T09:48:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1752', 'hist-ticket-72-1752', 'cash', 62000, 'completed', '2026-01-10T09:48:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1753', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-10T17:51:42.000Z', '2026-01-10T17:51:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1753-1', 'hist-ticket-72-1753', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T17:51:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1753-2', 'hist-ticket-72-1753', 'prod-americano', 1, 12000, 0, '2026-01-10T17:51:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1753', 'hist-ticket-72-1753', 'cash', 26500, 'completed', '2026-01-10T17:51:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1754', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-10T14:06:27.000Z', '2026-01-10T14:06:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1754-1', 'hist-ticket-72-1754', 'prod-latte', 1, 15000, 0, '2026-01-10T14:06:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1754-2', 'hist-ticket-72-1754', 'prod-latte', 1, 15000, 0, '2026-01-10T14:06:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1754-3', 'hist-ticket-72-1754', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T14:06:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1754-4', 'hist-ticket-72-1754', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T14:06:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1754', 'hist-ticket-72-1754', 'cash', 59000, 'completed', '2026-01-10T14:06:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1755', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-10T09:40:53.000Z', '2026-01-10T09:40:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1755-1', 'hist-ticket-72-1755', 'prod-mocha', 1, 16500, 0, '2026-01-10T09:40:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1755', 'hist-ticket-72-1755', 'cash', 16500, 'completed', '2026-01-10T09:40:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1756', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-10T19:49:18.000Z', '2026-01-10T19:49:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1756-1', 'hist-ticket-72-1756', 'prod-americano', 1, 12000, 0, '2026-01-10T19:49:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1756-2', 'hist-ticket-72-1756', 'prod-americano', 1, 12000, 0, '2026-01-10T19:49:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1756', 'hist-ticket-72-1756', 'cash', 24000, 'completed', '2026-01-10T19:49:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1757', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-10T09:20:15.000Z', '2026-01-10T09:20:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1757-1', 'hist-ticket-72-1757', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T09:20:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1757-2', 'hist-ticket-72-1757', 'prod-latte', 1, 15000, 0, '2026-01-10T09:20:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1757', 'hist-ticket-72-1757', 'cash', 29500, 'completed', '2026-01-10T09:20:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1758', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-10T17:50:08.000Z', '2026-01-10T17:50:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1758-1', 'hist-ticket-72-1758', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T17:50:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1758-2', 'hist-ticket-72-1758', 'prod-mocha', 1, 16500, 0, '2026-01-10T17:50:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1758-3', 'hist-ticket-72-1758', 'prod-mocha', 1, 16500, 0, '2026-01-10T17:50:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1758', 'hist-ticket-72-1758', 'cash', 47500, 'completed', '2026-01-10T17:50:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1759', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-10T09:41:39.000Z', '2026-01-10T09:41:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1759-1', 'hist-ticket-72-1759', 'prod-latte', 1, 15000, 0, '2026-01-10T09:41:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1759-2', 'hist-ticket-72-1759', 'prod-americano', 1, 12000, 0, '2026-01-10T09:41:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1759-3', 'hist-ticket-72-1759', 'prod-americano', 1, 12000, 0, '2026-01-10T09:41:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1759', 'hist-ticket-72-1759', 'cash', 39000, 'completed', '2026-01-10T09:41:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1760', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-10T12:57:29.000Z', '2026-01-10T12:57:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1760-1', 'hist-ticket-72-1760', 'prod-mocha', 1, 16500, 0, '2026-01-10T12:57:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1760', 'hist-ticket-72-1760', 'cash', 16500, 'completed', '2026-01-10T12:57:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-72-1761', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-10T13:07:56.000Z', '2026-01-10T13:07:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1761-1', 'hist-ticket-72-1761', 'prod-mocha', 1, 16500, 0, '2026-01-10T13:07:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1761-2', 'hist-ticket-72-1761', 'prod-americano', 1, 12000, 0, '2026-01-10T13:07:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1761-3', 'hist-ticket-72-1761', 'prod-latte', 1, 15000, 0, '2026-01-10T13:07:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-72-1761-4', 'hist-ticket-72-1761', 'prod-cappuccino', 1, 14500, 0, '2026-01-10T13:07:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-72-1761', 'hist-ticket-72-1761', 'cash', 58000, 'completed', '2026-01-10T13:07:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1762', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-11T11:31:57.000Z', '2026-01-11T11:31:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1762-1', 'hist-ticket-73-1762', 'prod-americano', 1, 12000, 0, '2026-01-11T11:31:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1762-2', 'hist-ticket-73-1762', 'prod-americano', 1, 12000, 0, '2026-01-11T11:31:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1762-3', 'hist-ticket-73-1762', 'prod-americano', 1, 12000, 0, '2026-01-11T11:31:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1762-4', 'hist-ticket-73-1762', 'prod-americano', 1, 12000, 0, '2026-01-11T11:31:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1762', 'hist-ticket-73-1762', 'cash', 48000, 'completed', '2026-01-11T11:31:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1763', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-11T10:06:21.000Z', '2026-01-11T10:06:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1763-1', 'hist-ticket-73-1763', 'prod-americano', 1, 12000, 0, '2026-01-11T10:06:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1763-2', 'hist-ticket-73-1763', 'prod-mocha', 1, 16500, 0, '2026-01-11T10:06:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1763', 'hist-ticket-73-1763', 'cash', 28500, 'completed', '2026-01-11T10:06:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1764', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-11T10:27:28.000Z', '2026-01-11T10:27:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1764-1', 'hist-ticket-73-1764', 'prod-mocha', 1, 16500, 0, '2026-01-11T10:27:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1764-2', 'hist-ticket-73-1764', 'prod-americano', 1, 12000, 0, '2026-01-11T10:27:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1764-3', 'hist-ticket-73-1764', 'prod-americano', 1, 12000, 0, '2026-01-11T10:27:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1764-4', 'hist-ticket-73-1764', 'prod-latte', 1, 15000, 0, '2026-01-11T10:27:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1764', 'hist-ticket-73-1764', 'cash', 55500, 'completed', '2026-01-11T10:27:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1765', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-11T14:17:21.000Z', '2026-01-11T14:17:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1765-1', 'hist-ticket-73-1765', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T14:17:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1765', 'hist-ticket-73-1765', 'cash', 14500, 'completed', '2026-01-11T14:17:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1766', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-11T13:29:36.000Z', '2026-01-11T13:29:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1766-1', 'hist-ticket-73-1766', 'prod-latte', 1, 15000, 0, '2026-01-11T13:29:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1766-2', 'hist-ticket-73-1766', 'prod-americano', 1, 12000, 0, '2026-01-11T13:29:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1766', 'hist-ticket-73-1766', 'cash', 27000, 'completed', '2026-01-11T13:29:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1767', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-11T19:27:43.000Z', '2026-01-11T19:27:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1767-1', 'hist-ticket-73-1767', 'prod-mocha', 1, 16500, 0, '2026-01-11T19:27:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1767-2', 'hist-ticket-73-1767', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T19:27:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1767-3', 'hist-ticket-73-1767', 'prod-americano', 1, 12000, 0, '2026-01-11T19:27:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1767', 'hist-ticket-73-1767', 'cash', 43000, 'completed', '2026-01-11T19:27:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1768', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-11T09:09:58.000Z', '2026-01-11T09:09:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1768-1', 'hist-ticket-73-1768', 'prod-latte', 1, 15000, 0, '2026-01-11T09:09:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1768-2', 'hist-ticket-73-1768', 'prod-americano', 1, 12000, 0, '2026-01-11T09:09:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1768-3', 'hist-ticket-73-1768', 'prod-mocha', 1, 16500, 0, '2026-01-11T09:09:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1768', 'hist-ticket-73-1768', 'cash', 43500, 'completed', '2026-01-11T09:09:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1769', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-01-11T09:52:50.000Z', '2026-01-11T09:52:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1769-1', 'hist-ticket-73-1769', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T09:52:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1769', 'hist-ticket-73-1769', 'cash', 14500, 'completed', '2026-01-11T09:52:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1770', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-11T15:34:31.000Z', '2026-01-11T15:34:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1770-1', 'hist-ticket-73-1770', 'prod-mocha', 1, 16500, 0, '2026-01-11T15:34:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1770-2', 'hist-ticket-73-1770', 'prod-mocha', 1, 16500, 0, '2026-01-11T15:34:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1770', 'hist-ticket-73-1770', 'cash', 33000, 'completed', '2026-01-11T15:34:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1771', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-11T08:32:14.000Z', '2026-01-11T08:32:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1771-1', 'hist-ticket-73-1771', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T08:32:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1771-2', 'hist-ticket-73-1771', 'prod-mocha', 1, 16500, 0, '2026-01-11T08:32:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1771', 'hist-ticket-73-1771', 'cash', 31000, 'completed', '2026-01-11T08:32:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1772', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-11T17:24:47.000Z', '2026-01-11T17:24:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1772-1', 'hist-ticket-73-1772', 'prod-mocha', 1, 16500, 0, '2026-01-11T17:24:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1772-2', 'hist-ticket-73-1772', 'prod-americano', 1, 12000, 0, '2026-01-11T17:24:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1772-3', 'hist-ticket-73-1772', 'prod-mocha', 1, 16500, 0, '2026-01-11T17:24:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1772-4', 'hist-ticket-73-1772', 'prod-mocha', 1, 16500, 0, '2026-01-11T17:24:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1772', 'hist-ticket-73-1772', 'cash', 61500, 'completed', '2026-01-11T17:24:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1773', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-11T15:30:19.000Z', '2026-01-11T15:30:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1773-1', 'hist-ticket-73-1773', 'prod-mocha', 1, 16500, 0, '2026-01-11T15:30:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1773-2', 'hist-ticket-73-1773', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T15:30:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1773', 'hist-ticket-73-1773', 'cash', 31000, 'completed', '2026-01-11T15:30:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1774', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-11T14:40:11.000Z', '2026-01-11T14:40:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1774-1', 'hist-ticket-73-1774', 'prod-americano', 1, 12000, 0, '2026-01-11T14:40:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1774-2', 'hist-ticket-73-1774', 'prod-mocha', 1, 16500, 0, '2026-01-11T14:40:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1774-3', 'hist-ticket-73-1774', 'prod-latte', 1, 15000, 0, '2026-01-11T14:40:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1774-4', 'hist-ticket-73-1774', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T14:40:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1774', 'hist-ticket-73-1774', 'cash', 58000, 'completed', '2026-01-11T14:40:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1775', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-11T18:32:28.000Z', '2026-01-11T18:32:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1775-1', 'hist-ticket-73-1775', 'prod-mocha', 1, 16500, 0, '2026-01-11T18:32:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1775-2', 'hist-ticket-73-1775', 'prod-latte', 1, 15000, 0, '2026-01-11T18:32:28.000Z');