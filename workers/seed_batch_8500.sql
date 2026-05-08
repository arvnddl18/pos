INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1884-1', 'hist-ticket-78-1884', 'prod-americano', 1, 12000, 0, '2026-01-16T09:08:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1884-2', 'hist-ticket-78-1884', 'prod-mocha', 1, 16500, 0, '2026-01-16T09:08:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1884-3', 'hist-ticket-78-1884', 'prod-americano', 1, 12000, 0, '2026-01-16T09:08:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1884', 'hist-ticket-78-1884', 'cash', 40500, 'completed', '2026-01-16T09:08:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1885', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-16T12:47:40.000Z', '2026-01-16T12:47:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1885-1', 'hist-ticket-78-1885', 'prod-americano', 1, 12000, 0, '2026-01-16T12:47:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1885-2', 'hist-ticket-78-1885', 'prod-latte', 1, 15000, 0, '2026-01-16T12:47:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1885-3', 'hist-ticket-78-1885', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T12:47:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1885-4', 'hist-ticket-78-1885', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T12:47:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1885', 'hist-ticket-78-1885', 'cash', 56000, 'completed', '2026-01-16T12:47:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1886', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-16T09:44:02.000Z', '2026-01-16T09:44:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1886-1', 'hist-ticket-78-1886', 'prod-mocha', 1, 16500, 0, '2026-01-16T09:44:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1886-2', 'hist-ticket-78-1886', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T09:44:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1886-3', 'hist-ticket-78-1886', 'prod-mocha', 1, 16500, 0, '2026-01-16T09:44:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1886', 'hist-ticket-78-1886', 'cash', 47500, 'completed', '2026-01-16T09:44:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1887', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-01-16T12:39:15.000Z', '2026-01-16T12:39:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1887-1', 'hist-ticket-78-1887', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T12:39:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1887', 'hist-ticket-78-1887', 'cash', 14500, 'completed', '2026-01-16T12:39:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1888', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-16T16:01:31.000Z', '2026-01-16T16:01:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1888-1', 'hist-ticket-78-1888', 'prod-latte', 1, 15000, 0, '2026-01-16T16:01:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1888-2', 'hist-ticket-78-1888', 'prod-americano', 1, 12000, 0, '2026-01-16T16:01:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1888-3', 'hist-ticket-78-1888', 'prod-americano', 1, 12000, 0, '2026-01-16T16:01:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1888-4', 'hist-ticket-78-1888', 'prod-americano', 1, 12000, 0, '2026-01-16T16:01:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1888', 'hist-ticket-78-1888', 'cash', 51000, 'completed', '2026-01-16T16:01:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1889', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-16T16:53:25.000Z', '2026-01-16T16:53:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1889-1', 'hist-ticket-78-1889', 'prod-latte', 1, 15000, 0, '2026-01-16T16:53:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1889-2', 'hist-ticket-78-1889', 'prod-latte', 1, 15000, 0, '2026-01-16T16:53:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1889', 'hist-ticket-78-1889', 'cash', 30000, 'completed', '2026-01-16T16:53:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1890', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-16T15:14:36.000Z', '2026-01-16T15:14:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1890-1', 'hist-ticket-78-1890', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T15:14:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1890-2', 'hist-ticket-78-1890', 'prod-americano', 1, 12000, 0, '2026-01-16T15:14:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1890', 'hist-ticket-78-1890', 'cash', 26500, 'completed', '2026-01-16T15:14:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1891', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-16T12:41:54.000Z', '2026-01-16T12:41:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1891-1', 'hist-ticket-78-1891', 'prod-mocha', 1, 16500, 0, '2026-01-16T12:41:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1891-2', 'hist-ticket-78-1891', 'prod-americano', 1, 12000, 0, '2026-01-16T12:41:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1891-3', 'hist-ticket-78-1891', 'prod-mocha', 1, 16500, 0, '2026-01-16T12:41:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1891-4', 'hist-ticket-78-1891', 'prod-latte', 1, 15000, 0, '2026-01-16T12:41:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1891', 'hist-ticket-78-1891', 'cash', 60000, 'completed', '2026-01-16T12:41:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1892', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-16T12:15:30.000Z', '2026-01-16T12:15:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1892-1', 'hist-ticket-78-1892', 'prod-mocha', 1, 16500, 0, '2026-01-16T12:15:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1892-2', 'hist-ticket-78-1892', 'prod-americano', 1, 12000, 0, '2026-01-16T12:15:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1892', 'hist-ticket-78-1892', 'cash', 28500, 'completed', '2026-01-16T12:15:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1893', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-16T18:48:39.000Z', '2026-01-16T18:48:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1893-1', 'hist-ticket-78-1893', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T18:48:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1893-2', 'hist-ticket-78-1893', 'prod-americano', 1, 12000, 0, '2026-01-16T18:48:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1893', 'hist-ticket-78-1893', 'cash', 26500, 'completed', '2026-01-16T18:48:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1894', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-17T13:03:22.000Z', '2026-01-17T13:03:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1894-1', 'hist-ticket-79-1894', 'prod-mocha', 1, 16500, 0, '2026-01-17T13:03:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1894-2', 'hist-ticket-79-1894', 'prod-mocha', 1, 16500, 0, '2026-01-17T13:03:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1894-3', 'hist-ticket-79-1894', 'prod-mocha', 1, 16500, 0, '2026-01-17T13:03:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1894-4', 'hist-ticket-79-1894', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T13:03:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1894', 'hist-ticket-79-1894', 'cash', 64000, 'completed', '2026-01-17T13:03:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1895', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-17T15:47:36.000Z', '2026-01-17T15:47:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1895-1', 'hist-ticket-79-1895', 'prod-mocha', 1, 16500, 0, '2026-01-17T15:47:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1895-2', 'hist-ticket-79-1895', 'prod-americano', 1, 12000, 0, '2026-01-17T15:47:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1895-3', 'hist-ticket-79-1895', 'prod-americano', 1, 12000, 0, '2026-01-17T15:47:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1895', 'hist-ticket-79-1895', 'cash', 40500, 'completed', '2026-01-17T15:47:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1896', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-17T15:54:37.000Z', '2026-01-17T15:54:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1896-1', 'hist-ticket-79-1896', 'prod-americano', 1, 12000, 0, '2026-01-17T15:54:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1896-2', 'hist-ticket-79-1896', 'prod-mocha', 1, 16500, 0, '2026-01-17T15:54:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1896-3', 'hist-ticket-79-1896', 'prod-mocha', 1, 16500, 0, '2026-01-17T15:54:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1896-4', 'hist-ticket-79-1896', 'prod-latte', 1, 15000, 0, '2026-01-17T15:54:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1896', 'hist-ticket-79-1896', 'cash', 60000, 'completed', '2026-01-17T15:54:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1897', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-17T14:44:21.000Z', '2026-01-17T14:44:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1897-1', 'hist-ticket-79-1897', 'prod-americano', 1, 12000, 0, '2026-01-17T14:44:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1897-2', 'hist-ticket-79-1897', 'prod-mocha', 1, 16500, 0, '2026-01-17T14:44:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1897-3', 'hist-ticket-79-1897', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T14:44:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1897-4', 'hist-ticket-79-1897', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T14:44:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1897', 'hist-ticket-79-1897', 'cash', 57500, 'completed', '2026-01-17T14:44:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1898', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-01-17T16:57:17.000Z', '2026-01-17T16:57:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1898-1', 'hist-ticket-79-1898', 'prod-latte', 1, 15000, 0, '2026-01-17T16:57:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1898-2', 'hist-ticket-79-1898', 'prod-latte', 1, 15000, 0, '2026-01-17T16:57:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1898-3', 'hist-ticket-79-1898', 'prod-americano', 1, 12000, 0, '2026-01-17T16:57:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1898-4', 'hist-ticket-79-1898', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T16:57:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1898', 'hist-ticket-79-1898', 'cash', 56500, 'completed', '2026-01-17T16:57:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1899', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-17T10:36:20.000Z', '2026-01-17T10:36:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1899-1', 'hist-ticket-79-1899', 'prod-americano', 1, 12000, 0, '2026-01-17T10:36:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1899', 'hist-ticket-79-1899', 'cash', 12000, 'completed', '2026-01-17T10:36:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1900', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-17T16:33:42.000Z', '2026-01-17T16:33:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1900-1', 'hist-ticket-79-1900', 'prod-latte', 1, 15000, 0, '2026-01-17T16:33:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1900', 'hist-ticket-79-1900', 'cash', 15000, 'completed', '2026-01-17T16:33:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1901', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-01-17T19:30:09.000Z', '2026-01-17T19:30:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1901-1', 'hist-ticket-79-1901', 'prod-mocha', 1, 16500, 0, '2026-01-17T19:30:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1901-2', 'hist-ticket-79-1901', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T19:30:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1901-3', 'hist-ticket-79-1901', 'prod-latte', 1, 15000, 0, '2026-01-17T19:30:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1901', 'hist-ticket-79-1901', 'cash', 46000, 'completed', '2026-01-17T19:30:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1902', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-17T18:34:50.000Z', '2026-01-17T18:34:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1902-1', 'hist-ticket-79-1902', 'prod-mocha', 1, 16500, 0, '2026-01-17T18:34:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1902-2', 'hist-ticket-79-1902', 'prod-latte', 1, 15000, 0, '2026-01-17T18:34:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1902', 'hist-ticket-79-1902', 'cash', 31500, 'completed', '2026-01-17T18:34:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1903', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-01-17T15:40:07.000Z', '2026-01-17T15:40:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1903-1', 'hist-ticket-79-1903', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T15:40:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1903-2', 'hist-ticket-79-1903', 'prod-mocha', 1, 16500, 0, '2026-01-17T15:40:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1903', 'hist-ticket-79-1903', 'cash', 31000, 'completed', '2026-01-17T15:40:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1904', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-01-17T10:35:37.000Z', '2026-01-17T10:35:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1904-1', 'hist-ticket-79-1904', 'prod-latte', 1, 15000, 0, '2026-01-17T10:35:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1904', 'hist-ticket-79-1904', 'cash', 15000, 'completed', '2026-01-17T10:35:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1905', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-17T08:41:36.000Z', '2026-01-17T08:41:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1905-1', 'hist-ticket-79-1905', 'prod-mocha', 1, 16500, 0, '2026-01-17T08:41:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1905-2', 'hist-ticket-79-1905', 'prod-mocha', 1, 16500, 0, '2026-01-17T08:41:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1905-3', 'hist-ticket-79-1905', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T08:41:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1905', 'hist-ticket-79-1905', 'cash', 47500, 'completed', '2026-01-17T08:41:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1906', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-17T16:53:18.000Z', '2026-01-17T16:53:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1906-1', 'hist-ticket-79-1906', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T16:53:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1906-2', 'hist-ticket-79-1906', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T16:53:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1906', 'hist-ticket-79-1906', 'cash', 29000, 'completed', '2026-01-17T16:53:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1907', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-17T15:16:39.000Z', '2026-01-17T15:16:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1907-1', 'hist-ticket-79-1907', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T15:16:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1907', 'hist-ticket-79-1907', 'cash', 14500, 'completed', '2026-01-17T15:16:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1908', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-01-17T13:08:52.000Z', '2026-01-17T13:08:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1908-1', 'hist-ticket-79-1908', 'prod-mocha', 1, 16500, 0, '2026-01-17T13:08:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1908-2', 'hist-ticket-79-1908', 'prod-mocha', 1, 16500, 0, '2026-01-17T13:08:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1908', 'hist-ticket-79-1908', 'cash', 33000, 'completed', '2026-01-17T13:08:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1909', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-17T10:16:31.000Z', '2026-01-17T10:16:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1909-1', 'hist-ticket-79-1909', 'prod-americano', 1, 12000, 0, '2026-01-17T10:16:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1909-2', 'hist-ticket-79-1909', 'prod-latte', 1, 15000, 0, '2026-01-17T10:16:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1909-3', 'hist-ticket-79-1909', 'prod-latte', 1, 15000, 0, '2026-01-17T10:16:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1909', 'hist-ticket-79-1909', 'cash', 42000, 'completed', '2026-01-17T10:16:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1910', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-17T12:53:56.000Z', '2026-01-17T12:53:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1910-1', 'hist-ticket-79-1910', 'prod-latte', 1, 15000, 0, '2026-01-17T12:53:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1910-2', 'hist-ticket-79-1910', 'prod-americano', 1, 12000, 0, '2026-01-17T12:53:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1910-3', 'hist-ticket-79-1910', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T12:53:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1910-4', 'hist-ticket-79-1910', 'prod-mocha', 1, 16500, 0, '2026-01-17T12:53:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1910', 'hist-ticket-79-1910', 'cash', 58000, 'completed', '2026-01-17T12:53:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1911', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-01-17T14:31:38.000Z', '2026-01-17T14:31:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1911-1', 'hist-ticket-79-1911', 'prod-americano', 1, 12000, 0, '2026-01-17T14:31:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1911-2', 'hist-ticket-79-1911', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T14:31:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1911', 'hist-ticket-79-1911', 'cash', 26500, 'completed', '2026-01-17T14:31:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1912', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-17T12:14:30.000Z', '2026-01-17T12:14:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1912-1', 'hist-ticket-79-1912', 'prod-latte', 1, 15000, 0, '2026-01-17T12:14:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1912-2', 'hist-ticket-79-1912', 'prod-americano', 1, 12000, 0, '2026-01-17T12:14:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1912-3', 'hist-ticket-79-1912', 'prod-latte', 1, 15000, 0, '2026-01-17T12:14:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1912', 'hist-ticket-79-1912', 'cash', 42000, 'completed', '2026-01-17T12:14:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1913', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-17T15:50:06.000Z', '2026-01-17T15:50:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1913-1', 'hist-ticket-79-1913', 'prod-mocha', 1, 16500, 0, '2026-01-17T15:50:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1913-2', 'hist-ticket-79-1913', 'prod-mocha', 1, 16500, 0, '2026-01-17T15:50:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1913-3', 'hist-ticket-79-1913', 'prod-americano', 1, 12000, 0, '2026-01-17T15:50:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1913-4', 'hist-ticket-79-1913', 'prod-latte', 1, 15000, 0, '2026-01-17T15:50:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1913', 'hist-ticket-79-1913', 'cash', 60000, 'completed', '2026-01-17T15:50:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1914', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-17T13:51:20.000Z', '2026-01-17T13:51:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1914-1', 'hist-ticket-79-1914', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T13:51:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1914-2', 'hist-ticket-79-1914', 'prod-mocha', 1, 16500, 0, '2026-01-17T13:51:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1914-3', 'hist-ticket-79-1914', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T13:51:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1914-4', 'hist-ticket-79-1914', 'prod-latte', 1, 15000, 0, '2026-01-17T13:51:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1914', 'hist-ticket-79-1914', 'cash', 60500, 'completed', '2026-01-17T13:51:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1915', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-17T13:02:02.000Z', '2026-01-17T13:02:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1915-1', 'hist-ticket-79-1915', 'prod-mocha', 1, 16500, 0, '2026-01-17T13:02:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1915', 'hist-ticket-79-1915', 'cash', 16500, 'completed', '2026-01-17T13:02:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1916', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-17T14:25:35.000Z', '2026-01-17T14:25:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1916-1', 'hist-ticket-79-1916', 'prod-latte', 1, 15000, 0, '2026-01-17T14:25:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1916-2', 'hist-ticket-79-1916', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T14:25:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1916-3', 'hist-ticket-79-1916', 'prod-mocha', 1, 16500, 0, '2026-01-17T14:25:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1916', 'hist-ticket-79-1916', 'cash', 46000, 'completed', '2026-01-17T14:25:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1917', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-01-17T16:33:59.000Z', '2026-01-17T16:33:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1917-1', 'hist-ticket-79-1917', 'prod-latte', 1, 15000, 0, '2026-01-17T16:33:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1917-2', 'hist-ticket-79-1917', 'prod-americano', 1, 12000, 0, '2026-01-17T16:33:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1917-3', 'hist-ticket-79-1917', 'prod-americano', 1, 12000, 0, '2026-01-17T16:33:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1917', 'hist-ticket-79-1917', 'cash', 39000, 'completed', '2026-01-17T16:33:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1918', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-17T19:22:17.000Z', '2026-01-17T19:22:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1918-1', 'hist-ticket-79-1918', 'prod-latte', 1, 15000, 0, '2026-01-17T19:22:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1918-2', 'hist-ticket-79-1918', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T19:22:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1918-3', 'hist-ticket-79-1918', 'prod-latte', 1, 15000, 0, '2026-01-17T19:22:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1918', 'hist-ticket-79-1918', 'cash', 44500, 'completed', '2026-01-17T19:22:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1919', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-17T18:35:39.000Z', '2026-01-17T18:35:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1919-1', 'hist-ticket-79-1919', 'prod-americano', 1, 12000, 0, '2026-01-17T18:35:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1919-2', 'hist-ticket-79-1919', 'prod-americano', 1, 12000, 0, '2026-01-17T18:35:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1919', 'hist-ticket-79-1919', 'cash', 24000, 'completed', '2026-01-17T18:35:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1920', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-17T18:07:43.000Z', '2026-01-17T18:07:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1920-1', 'hist-ticket-79-1920', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T18:07:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1920-2', 'hist-ticket-79-1920', 'prod-americano', 1, 12000, 0, '2026-01-17T18:07:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1920-3', 'hist-ticket-79-1920', 'prod-mocha', 1, 16500, 0, '2026-01-17T18:07:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1920', 'hist-ticket-79-1920', 'cash', 43000, 'completed', '2026-01-17T18:07:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1921', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-01-17T10:58:41.000Z', '2026-01-17T10:58:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1921-1', 'hist-ticket-79-1921', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T10:58:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1921', 'hist-ticket-79-1921', 'cash', 14500, 'completed', '2026-01-17T10:58:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1922', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-17T16:44:24.000Z', '2026-01-17T16:44:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1922-1', 'hist-ticket-79-1922', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T16:44:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1922-2', 'hist-ticket-79-1922', 'prod-latte', 1, 15000, 0, '2026-01-17T16:44:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1922', 'hist-ticket-79-1922', 'cash', 29500, 'completed', '2026-01-17T16:44:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1923', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-17T14:00:57.000Z', '2026-01-17T14:00:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1923-1', 'hist-ticket-79-1923', 'prod-cappuccino', 1, 14500, 0, '2026-01-17T14:00:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1923-2', 'hist-ticket-79-1923', 'prod-latte', 1, 15000, 0, '2026-01-17T14:00:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1923-3', 'hist-ticket-79-1923', 'prod-mocha', 1, 16500, 0, '2026-01-17T14:00:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1923', 'hist-ticket-79-1923', 'cash', 46000, 'completed', '2026-01-17T14:00:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-79-1924', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-17T09:05:14.000Z', '2026-01-17T09:05:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1924-1', 'hist-ticket-79-1924', 'prod-latte', 1, 15000, 0, '2026-01-17T09:05:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-79-1924-2', 'hist-ticket-79-1924', 'prod-mocha', 1, 16500, 0, '2026-01-17T09:05:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-79-1924', 'hist-ticket-79-1924', 'cash', 31500, 'completed', '2026-01-17T09:05:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1925', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-18T14:43:50.000Z', '2026-01-18T14:43:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1925-1', 'hist-ticket-80-1925', 'prod-latte', 1, 15000, 0, '2026-01-18T14:43:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1925-2', 'hist-ticket-80-1925', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T14:43:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1925', 'hist-ticket-80-1925', 'cash', 29500, 'completed', '2026-01-18T14:43:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1926', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-18T09:11:02.000Z', '2026-01-18T09:11:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1926-1', 'hist-ticket-80-1926', 'prod-mocha', 1, 16500, 0, '2026-01-18T09:11:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1926-2', 'hist-ticket-80-1926', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T09:11:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1926', 'hist-ticket-80-1926', 'cash', 31000, 'completed', '2026-01-18T09:11:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1927', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-18T13:31:58.000Z', '2026-01-18T13:31:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1927-1', 'hist-ticket-80-1927', 'prod-mocha', 1, 16500, 0, '2026-01-18T13:31:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1927-2', 'hist-ticket-80-1927', 'prod-latte', 1, 15000, 0, '2026-01-18T13:31:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1927-3', 'hist-ticket-80-1927', 'prod-mocha', 1, 16500, 0, '2026-01-18T13:31:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1927-4', 'hist-ticket-80-1927', 'prod-mocha', 1, 16500, 0, '2026-01-18T13:31:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1927', 'hist-ticket-80-1927', 'cash', 64500, 'completed', '2026-01-18T13:31:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1928', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-18T18:24:04.000Z', '2026-01-18T18:24:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1928-1', 'hist-ticket-80-1928', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T18:24:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1928', 'hist-ticket-80-1928', 'cash', 14500, 'completed', '2026-01-18T18:24:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1929', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-18T15:43:10.000Z', '2026-01-18T15:43:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1929-1', 'hist-ticket-80-1929', 'prod-americano', 1, 12000, 0, '2026-01-18T15:43:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1929-2', 'hist-ticket-80-1929', 'prod-mocha', 1, 16500, 0, '2026-01-18T15:43:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1929-3', 'hist-ticket-80-1929', 'prod-latte', 1, 15000, 0, '2026-01-18T15:43:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1929', 'hist-ticket-80-1929', 'cash', 43500, 'completed', '2026-01-18T15:43:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1930', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-18T15:11:47.000Z', '2026-01-18T15:11:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1930-1', 'hist-ticket-80-1930', 'prod-mocha', 1, 16500, 0, '2026-01-18T15:11:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1930', 'hist-ticket-80-1930', 'cash', 16500, 'completed', '2026-01-18T15:11:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1931', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-18T13:15:13.000Z', '2026-01-18T13:15:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1931-1', 'hist-ticket-80-1931', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T13:15:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1931-2', 'hist-ticket-80-1931', 'prod-mocha', 1, 16500, 0, '2026-01-18T13:15:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1931-3', 'hist-ticket-80-1931', 'prod-americano', 1, 12000, 0, '2026-01-18T13:15:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1931-4', 'hist-ticket-80-1931', 'prod-latte', 1, 15000, 0, '2026-01-18T13:15:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1931', 'hist-ticket-80-1931', 'cash', 58000, 'completed', '2026-01-18T13:15:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1932', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-01-18T08:50:05.000Z', '2026-01-18T08:50:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1932-1', 'hist-ticket-80-1932', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T08:50:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1932', 'hist-ticket-80-1932', 'cash', 14500, 'completed', '2026-01-18T08:50:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1933', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-18T17:24:54.000Z', '2026-01-18T17:24:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1933-1', 'hist-ticket-80-1933', 'prod-latte', 1, 15000, 0, '2026-01-18T17:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1933-2', 'hist-ticket-80-1933', 'prod-mocha', 1, 16500, 0, '2026-01-18T17:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1933-3', 'hist-ticket-80-1933', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T17:24:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1933', 'hist-ticket-80-1933', 'cash', 46000, 'completed', '2026-01-18T17:24:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1934', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-18T18:10:13.000Z', '2026-01-18T18:10:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1934-1', 'hist-ticket-80-1934', 'prod-latte', 1, 15000, 0, '2026-01-18T18:10:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1934', 'hist-ticket-80-1934', 'cash', 15000, 'completed', '2026-01-18T18:10:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1935', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-18T15:10:32.000Z', '2026-01-18T15:10:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1935-1', 'hist-ticket-80-1935', 'prod-latte', 1, 15000, 0, '2026-01-18T15:10:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1935-2', 'hist-ticket-80-1935', 'prod-americano', 1, 12000, 0, '2026-01-18T15:10:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1935', 'hist-ticket-80-1935', 'cash', 27000, 'completed', '2026-01-18T15:10:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1936', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-18T13:09:52.000Z', '2026-01-18T13:09:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1936-1', 'hist-ticket-80-1936', 'prod-latte', 1, 15000, 0, '2026-01-18T13:09:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1936-2', 'hist-ticket-80-1936', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T13:09:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1936-3', 'hist-ticket-80-1936', 'prod-americano', 1, 12000, 0, '2026-01-18T13:09:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1936', 'hist-ticket-80-1936', 'cash', 41500, 'completed', '2026-01-18T13:09:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1937', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-18T11:27:21.000Z', '2026-01-18T11:27:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1937-1', 'hist-ticket-80-1937', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T11:27:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1937-2', 'hist-ticket-80-1937', 'prod-americano', 1, 12000, 0, '2026-01-18T11:27:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1937', 'hist-ticket-80-1937', 'cash', 26500, 'completed', '2026-01-18T11:27:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1938', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-18T10:28:11.000Z', '2026-01-18T10:28:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1938-1', 'hist-ticket-80-1938', 'prod-latte', 1, 15000, 0, '2026-01-18T10:28:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1938', 'hist-ticket-80-1938', 'cash', 15000, 'completed', '2026-01-18T10:28:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1939', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-18T12:34:37.000Z', '2026-01-18T12:34:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1939-1', 'hist-ticket-80-1939', 'prod-americano', 1, 12000, 0, '2026-01-18T12:34:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1939-2', 'hist-ticket-80-1939', 'prod-americano', 1, 12000, 0, '2026-01-18T12:34:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1939-3', 'hist-ticket-80-1939', 'prod-americano', 1, 12000, 0, '2026-01-18T12:34:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1939', 'hist-ticket-80-1939', 'cash', 36000, 'completed', '2026-01-18T12:34:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1940', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-18T10:48:46.000Z', '2026-01-18T10:48:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1940-1', 'hist-ticket-80-1940', 'prod-mocha', 1, 16500, 0, '2026-01-18T10:48:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1940-2', 'hist-ticket-80-1940', 'prod-americano', 1, 12000, 0, '2026-01-18T10:48:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1940', 'hist-ticket-80-1940', 'cash', 28500, 'completed', '2026-01-18T10:48:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1941', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-18T10:04:13.000Z', '2026-01-18T10:04:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1941-1', 'hist-ticket-80-1941', 'prod-americano', 1, 12000, 0, '2026-01-18T10:04:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1941-2', 'hist-ticket-80-1941', 'prod-mocha', 1, 16500, 0, '2026-01-18T10:04:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1941-3', 'hist-ticket-80-1941', 'prod-latte', 1, 15000, 0, '2026-01-18T10:04:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1941', 'hist-ticket-80-1941', 'cash', 43500, 'completed', '2026-01-18T10:04:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1942', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-01-18T16:19:58.000Z', '2026-01-18T16:19:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1942-1', 'hist-ticket-80-1942', 'prod-americano', 1, 12000, 0, '2026-01-18T16:19:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1942-2', 'hist-ticket-80-1942', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T16:19:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1942-3', 'hist-ticket-80-1942', 'prod-mocha', 1, 16500, 0, '2026-01-18T16:19:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1942', 'hist-ticket-80-1942', 'cash', 43000, 'completed', '2026-01-18T16:19:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1943', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-01-18T14:39:52.000Z', '2026-01-18T14:39:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1943-1', 'hist-ticket-80-1943', 'prod-americano', 1, 12000, 0, '2026-01-18T14:39:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1943', 'hist-ticket-80-1943', 'cash', 12000, 'completed', '2026-01-18T14:39:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1944', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-18T08:45:27.000Z', '2026-01-18T08:45:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1944-1', 'hist-ticket-80-1944', 'prod-latte', 1, 15000, 0, '2026-01-18T08:45:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1944-2', 'hist-ticket-80-1944', 'prod-mocha', 1, 16500, 0, '2026-01-18T08:45:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1944', 'hist-ticket-80-1944', 'cash', 31500, 'completed', '2026-01-18T08:45:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1945', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-18T08:13:19.000Z', '2026-01-18T08:13:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1945-1', 'hist-ticket-80-1945', 'prod-americano', 1, 12000, 0, '2026-01-18T08:13:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1945-2', 'hist-ticket-80-1945', 'prod-mocha', 1, 16500, 0, '2026-01-18T08:13:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1945-3', 'hist-ticket-80-1945', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T08:13:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1945', 'hist-ticket-80-1945', 'cash', 43000, 'completed', '2026-01-18T08:13:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1946', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-18T15:47:45.000Z', '2026-01-18T15:47:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1946-1', 'hist-ticket-80-1946', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T15:47:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1946-2', 'hist-ticket-80-1946', 'prod-latte', 1, 15000, 0, '2026-01-18T15:47:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1946', 'hist-ticket-80-1946', 'cash', 29500, 'completed', '2026-01-18T15:47:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1947', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-18T17:32:01.000Z', '2026-01-18T17:32:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1947-1', 'hist-ticket-80-1947', 'prod-mocha', 1, 16500, 0, '2026-01-18T17:32:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1947-2', 'hist-ticket-80-1947', 'prod-americano', 1, 12000, 0, '2026-01-18T17:32:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1947', 'hist-ticket-80-1947', 'cash', 28500, 'completed', '2026-01-18T17:32:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1948', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-01-18T13:07:44.000Z', '2026-01-18T13:07:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1948-1', 'hist-ticket-80-1948', 'prod-americano', 1, 12000, 0, '2026-01-18T13:07:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1948-2', 'hist-ticket-80-1948', 'prod-latte', 1, 15000, 0, '2026-01-18T13:07:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1948-3', 'hist-ticket-80-1948', 'prod-mocha', 1, 16500, 0, '2026-01-18T13:07:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1948-4', 'hist-ticket-80-1948', 'prod-americano', 1, 12000, 0, '2026-01-18T13:07:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1948', 'hist-ticket-80-1948', 'cash', 55500, 'completed', '2026-01-18T13:07:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1949', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-18T12:25:15.000Z', '2026-01-18T12:25:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1949-1', 'hist-ticket-80-1949', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T12:25:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1949', 'hist-ticket-80-1949', 'cash', 14500, 'completed', '2026-01-18T12:25:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1950', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-01-18T14:42:14.000Z', '2026-01-18T14:42:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1950-1', 'hist-ticket-80-1950', 'prod-americano', 1, 12000, 0, '2026-01-18T14:42:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1950', 'hist-ticket-80-1950', 'cash', 12000, 'completed', '2026-01-18T14:42:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1951', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-18T08:58:15.000Z', '2026-01-18T08:58:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1951-1', 'hist-ticket-80-1951', 'prod-americano', 1, 12000, 0, '2026-01-18T08:58:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1951-2', 'hist-ticket-80-1951', 'prod-latte', 1, 15000, 0, '2026-01-18T08:58:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1951-3', 'hist-ticket-80-1951', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T08:58:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1951', 'hist-ticket-80-1951', 'cash', 41500, 'completed', '2026-01-18T08:58:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1952', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-18T10:18:47.000Z', '2026-01-18T10:18:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1952-1', 'hist-ticket-80-1952', 'prod-latte', 1, 15000, 0, '2026-01-18T10:18:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1952-2', 'hist-ticket-80-1952', 'prod-americano', 1, 12000, 0, '2026-01-18T10:18:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1952-3', 'hist-ticket-80-1952', 'prod-latte', 1, 15000, 0, '2026-01-18T10:18:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1952-4', 'hist-ticket-80-1952', 'prod-americano', 1, 12000, 0, '2026-01-18T10:18:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1952', 'hist-ticket-80-1952', 'cash', 54000, 'completed', '2026-01-18T10:18:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1953', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-18T08:03:37.000Z', '2026-01-18T08:03:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1953-1', 'hist-ticket-80-1953', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T08:03:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1953-2', 'hist-ticket-80-1953', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T08:03:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1953', 'hist-ticket-80-1953', 'cash', 29000, 'completed', '2026-01-18T08:03:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1954', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-18T14:15:54.000Z', '2026-01-18T14:15:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1954-1', 'hist-ticket-80-1954', 'prod-mocha', 1, 16500, 0, '2026-01-18T14:15:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1954-2', 'hist-ticket-80-1954', 'prod-latte', 1, 15000, 0, '2026-01-18T14:15:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1954-3', 'hist-ticket-80-1954', 'prod-latte', 1, 15000, 0, '2026-01-18T14:15:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1954-4', 'hist-ticket-80-1954', 'prod-mocha', 1, 16500, 0, '2026-01-18T14:15:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1954', 'hist-ticket-80-1954', 'cash', 63000, 'completed', '2026-01-18T14:15:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1955', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-18T15:40:45.000Z', '2026-01-18T15:40:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1955-1', 'hist-ticket-80-1955', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T15:40:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1955-2', 'hist-ticket-80-1955', 'prod-latte', 1, 15000, 0, '2026-01-18T15:40:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1955-3', 'hist-ticket-80-1955', 'prod-americano', 1, 12000, 0, '2026-01-18T15:40:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1955', 'hist-ticket-80-1955', 'cash', 41500, 'completed', '2026-01-18T15:40:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1956', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-01-18T17:31:50.000Z', '2026-01-18T17:31:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1956-1', 'hist-ticket-80-1956', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T17:31:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1956-2', 'hist-ticket-80-1956', 'prod-cappuccino', 1, 14500, 0, '2026-01-18T17:31:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1956-3', 'hist-ticket-80-1956', 'prod-latte', 1, 15000, 0, '2026-01-18T17:31:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1956', 'hist-ticket-80-1956', 'cash', 44000, 'completed', '2026-01-18T17:31:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1957', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-18T17:49:41.000Z', '2026-01-18T17:49:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1957-1', 'hist-ticket-80-1957', 'prod-americano', 1, 12000, 0, '2026-01-18T17:49:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1957', 'hist-ticket-80-1957', 'cash', 12000, 'completed', '2026-01-18T17:49:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1958', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-18T18:27:12.000Z', '2026-01-18T18:27:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1958-1', 'hist-ticket-80-1958', 'prod-latte', 1, 15000, 0, '2026-01-18T18:27:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1958-2', 'hist-ticket-80-1958', 'prod-latte', 1, 15000, 0, '2026-01-18T18:27:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1958', 'hist-ticket-80-1958', 'cash', 30000, 'completed', '2026-01-18T18:27:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1959', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-18T12:27:40.000Z', '2026-01-18T12:27:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1959-1', 'hist-ticket-80-1959', 'prod-americano', 1, 12000, 0, '2026-01-18T12:27:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1959', 'hist-ticket-80-1959', 'cash', 12000, 'completed', '2026-01-18T12:27:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-80-1960', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-18T16:26:12.000Z', '2026-01-18T16:26:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1960-1', 'hist-ticket-80-1960', 'prod-americano', 1, 12000, 0, '2026-01-18T16:26:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-80-1960-2', 'hist-ticket-80-1960', 'prod-mocha', 1, 16500, 0, '2026-01-18T16:26:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-80-1960', 'hist-ticket-80-1960', 'cash', 28500, 'completed', '2026-01-18T16:26:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1961', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-19T13:29:26.000Z', '2026-01-19T13:29:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1961-1', 'hist-ticket-81-1961', 'prod-mocha', 1, 16500, 0, '2026-01-19T13:29:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1961-2', 'hist-ticket-81-1961', 'prod-americano', 1, 12000, 0, '2026-01-19T13:29:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1961-3', 'hist-ticket-81-1961', 'prod-mocha', 1, 16500, 0, '2026-01-19T13:29:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1961-4', 'hist-ticket-81-1961', 'prod-americano', 1, 12000, 0, '2026-01-19T13:29:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1961', 'hist-ticket-81-1961', 'cash', 57000, 'completed', '2026-01-19T13:29:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1962', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-19T11:15:48.000Z', '2026-01-19T11:15:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1962-1', 'hist-ticket-81-1962', 'prod-mocha', 1, 16500, 0, '2026-01-19T11:15:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1962-2', 'hist-ticket-81-1962', 'prod-mocha', 1, 16500, 0, '2026-01-19T11:15:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1962-3', 'hist-ticket-81-1962', 'prod-cappuccino', 1, 14500, 0, '2026-01-19T11:15:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1962', 'hist-ticket-81-1962', 'cash', 47500, 'completed', '2026-01-19T11:15:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1963', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-01-19T18:04:39.000Z', '2026-01-19T18:04:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1963-1', 'hist-ticket-81-1963', 'prod-mocha', 1, 16500, 0, '2026-01-19T18:04:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1963-2', 'hist-ticket-81-1963', 'prod-americano', 1, 12000, 0, '2026-01-19T18:04:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1963-3', 'hist-ticket-81-1963', 'prod-cappuccino', 1, 14500, 0, '2026-01-19T18:04:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1963-4', 'hist-ticket-81-1963', 'prod-americano', 1, 12000, 0, '2026-01-19T18:04:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1963', 'hist-ticket-81-1963', 'cash', 55000, 'completed', '2026-01-19T18:04:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1964', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-19T19:36:14.000Z', '2026-01-19T19:36:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1964-1', 'hist-ticket-81-1964', 'prod-americano', 1, 12000, 0, '2026-01-19T19:36:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1964-2', 'hist-ticket-81-1964', 'prod-americano', 1, 12000, 0, '2026-01-19T19:36:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1964', 'hist-ticket-81-1964', 'cash', 24000, 'completed', '2026-01-19T19:36:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1965', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-01-19T15:16:55.000Z', '2026-01-19T15:16:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1965-1', 'hist-ticket-81-1965', 'prod-americano', 1, 12000, 0, '2026-01-19T15:16:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1965', 'hist-ticket-81-1965', 'cash', 12000, 'completed', '2026-01-19T15:16:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1966', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-19T13:48:16.000Z', '2026-01-19T13:48:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1966-1', 'hist-ticket-81-1966', 'prod-mocha', 1, 16500, 0, '2026-01-19T13:48:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1966', 'hist-ticket-81-1966', 'cash', 16500, 'completed', '2026-01-19T13:48:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1967', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-19T13:40:20.000Z', '2026-01-19T13:40:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1967-1', 'hist-ticket-81-1967', 'prod-mocha', 1, 16500, 0, '2026-01-19T13:40:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1967-2', 'hist-ticket-81-1967', 'prod-cappuccino', 1, 14500, 0, '2026-01-19T13:40:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1967-3', 'hist-ticket-81-1967', 'prod-cappuccino', 1, 14500, 0, '2026-01-19T13:40:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1967-4', 'hist-ticket-81-1967', 'prod-cappuccino', 1, 14500, 0, '2026-01-19T13:40:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1967', 'hist-ticket-81-1967', 'cash', 60000, 'completed', '2026-01-19T13:40:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1968', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-19T16:59:09.000Z', '2026-01-19T16:59:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1968-1', 'hist-ticket-81-1968', 'prod-latte', 1, 15000, 0, '2026-01-19T16:59:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1968', 'hist-ticket-81-1968', 'cash', 15000, 'completed', '2026-01-19T16:59:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1969', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-19T18:52:56.000Z', '2026-01-19T18:52:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1969-1', 'hist-ticket-81-1969', 'prod-latte', 1, 15000, 0, '2026-01-19T18:52:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1969', 'hist-ticket-81-1969', 'cash', 15000, 'completed', '2026-01-19T18:52:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1970', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-01-19T16:51:18.000Z', '2026-01-19T16:51:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1970-1', 'hist-ticket-81-1970', 'prod-mocha', 1, 16500, 0, '2026-01-19T16:51:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1970-2', 'hist-ticket-81-1970', 'prod-mocha', 1, 16500, 0, '2026-01-19T16:51:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1970', 'hist-ticket-81-1970', 'cash', 33000, 'completed', '2026-01-19T16:51:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1971', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-19T08:21:23.000Z', '2026-01-19T08:21:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1971-1', 'hist-ticket-81-1971', 'prod-mocha', 1, 16500, 0, '2026-01-19T08:21:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1971-2', 'hist-ticket-81-1971', 'prod-latte', 1, 15000, 0, '2026-01-19T08:21:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1971-3', 'hist-ticket-81-1971', 'prod-americano', 1, 12000, 0, '2026-01-19T08:21:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1971-4', 'hist-ticket-81-1971', 'prod-mocha', 1, 16500, 0, '2026-01-19T08:21:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1971', 'hist-ticket-81-1971', 'cash', 60000, 'completed', '2026-01-19T08:21:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1972', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-19T17:36:04.000Z', '2026-01-19T17:36:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1972-1', 'hist-ticket-81-1972', 'prod-latte', 1, 15000, 0, '2026-01-19T17:36:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1972', 'hist-ticket-81-1972', 'cash', 15000, 'completed', '2026-01-19T17:36:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1973', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-19T14:35:16.000Z', '2026-01-19T14:35:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1973-1', 'hist-ticket-81-1973', 'prod-latte', 1, 15000, 0, '2026-01-19T14:35:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1973-2', 'hist-ticket-81-1973', 'prod-mocha', 1, 16500, 0, '2026-01-19T14:35:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1973', 'hist-ticket-81-1973', 'cash', 31500, 'completed', '2026-01-19T14:35:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1974', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-19T18:40:43.000Z', '2026-01-19T18:40:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1974-1', 'hist-ticket-81-1974', 'prod-latte', 1, 15000, 0, '2026-01-19T18:40:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1974-2', 'hist-ticket-81-1974', 'prod-cappuccino', 1, 14500, 0, '2026-01-19T18:40:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1974', 'hist-ticket-81-1974', 'cash', 29500, 'completed', '2026-01-19T18:40:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1975', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-01-19T19:11:26.000Z', '2026-01-19T19:11:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1975-1', 'hist-ticket-81-1975', 'prod-americano', 1, 12000, 0, '2026-01-19T19:11:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1975', 'hist-ticket-81-1975', 'cash', 12000, 'completed', '2026-01-19T19:11:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1976', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-19T08:28:16.000Z', '2026-01-19T08:28:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1976-1', 'hist-ticket-81-1976', 'prod-mocha', 1, 16500, 0, '2026-01-19T08:28:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1976-2', 'hist-ticket-81-1976', 'prod-mocha', 1, 16500, 0, '2026-01-19T08:28:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1976-3', 'hist-ticket-81-1976', 'prod-americano', 1, 12000, 0, '2026-01-19T08:28:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1976-4', 'hist-ticket-81-1976', 'prod-americano', 1, 12000, 0, '2026-01-19T08:28:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1976', 'hist-ticket-81-1976', 'cash', 57000, 'completed', '2026-01-19T08:28:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1977', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-19T18:52:42.000Z', '2026-01-19T18:52:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1977-1', 'hist-ticket-81-1977', 'prod-latte', 1, 15000, 0, '2026-01-19T18:52:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1977-2', 'hist-ticket-81-1977', 'prod-latte', 1, 15000, 0, '2026-01-19T18:52:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1977', 'hist-ticket-81-1977', 'cash', 30000, 'completed', '2026-01-19T18:52:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1978', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-19T18:29:30.000Z', '2026-01-19T18:29:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1978-1', 'hist-ticket-81-1978', 'prod-latte', 1, 15000, 0, '2026-01-19T18:29:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1978-2', 'hist-ticket-81-1978', 'prod-latte', 1, 15000, 0, '2026-01-19T18:29:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1978-3', 'hist-ticket-81-1978', 'prod-latte', 1, 15000, 0, '2026-01-19T18:29:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1978-4', 'hist-ticket-81-1978', 'prod-americano', 1, 12000, 0, '2026-01-19T18:29:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1978', 'hist-ticket-81-1978', 'cash', 57000, 'completed', '2026-01-19T18:29:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-81-1979', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-01-19T14:06:06.000Z', '2026-01-19T14:06:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1979-1', 'hist-ticket-81-1979', 'prod-latte', 1, 15000, 0, '2026-01-19T14:06:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1979-2', 'hist-ticket-81-1979', 'prod-latte', 1, 15000, 0, '2026-01-19T14:06:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1979-3', 'hist-ticket-81-1979', 'prod-americano', 1, 12000, 0, '2026-01-19T14:06:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-81-1979-4', 'hist-ticket-81-1979', 'prod-cappuccino', 1, 14500, 0, '2026-01-19T14:06:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-81-1979', 'hist-ticket-81-1979', 'cash', 56500, 'completed', '2026-01-19T14:06:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1980', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-20T12:47:22.000Z', '2026-01-20T12:47:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1980-1', 'hist-ticket-82-1980', 'prod-mocha', 1, 16500, 0, '2026-01-20T12:47:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1980', 'hist-ticket-82-1980', 'cash', 16500, 'completed', '2026-01-20T12:47:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1981', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-20T11:02:28.000Z', '2026-01-20T11:02:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1981-1', 'hist-ticket-82-1981', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T11:02:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1981-2', 'hist-ticket-82-1981', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T11:02:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1981-3', 'hist-ticket-82-1981', 'prod-americano', 1, 12000, 0, '2026-01-20T11:02:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1981', 'hist-ticket-82-1981', 'cash', 41000, 'completed', '2026-01-20T11:02:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1982', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-20T11:53:25.000Z', '2026-01-20T11:53:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1982-1', 'hist-ticket-82-1982', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T11:53:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1982-2', 'hist-ticket-82-1982', 'prod-mocha', 1, 16500, 0, '2026-01-20T11:53:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1982', 'hist-ticket-82-1982', 'cash', 31000, 'completed', '2026-01-20T11:53:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1983', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-01-20T09:24:58.000Z', '2026-01-20T09:24:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1983-1', 'hist-ticket-82-1983', 'prod-americano', 1, 12000, 0, '2026-01-20T09:24:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1983-2', 'hist-ticket-82-1983', 'prod-mocha', 1, 16500, 0, '2026-01-20T09:24:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1983', 'hist-ticket-82-1983', 'cash', 28500, 'completed', '2026-01-20T09:24:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1984', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-01-20T11:48:11.000Z', '2026-01-20T11:48:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1984-1', 'hist-ticket-82-1984', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T11:48:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1984', 'hist-ticket-82-1984', 'cash', 14500, 'completed', '2026-01-20T11:48:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1985', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-20T18:56:10.000Z', '2026-01-20T18:56:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1985-1', 'hist-ticket-82-1985', 'prod-mocha', 1, 16500, 0, '2026-01-20T18:56:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1985-2', 'hist-ticket-82-1985', 'prod-americano', 1, 12000, 0, '2026-01-20T18:56:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1985', 'hist-ticket-82-1985', 'cash', 28500, 'completed', '2026-01-20T18:56:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1986', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-01-20T18:36:15.000Z', '2026-01-20T18:36:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1986-1', 'hist-ticket-82-1986', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T18:36:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1986-2', 'hist-ticket-82-1986', 'prod-mocha', 1, 16500, 0, '2026-01-20T18:36:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1986-3', 'hist-ticket-82-1986', 'prod-americano', 1, 12000, 0, '2026-01-20T18:36:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1986', 'hist-ticket-82-1986', 'cash', 43000, 'completed', '2026-01-20T18:36:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1987', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-20T13:46:29.000Z', '2026-01-20T13:46:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1987-1', 'hist-ticket-82-1987', 'prod-latte', 1, 15000, 0, '2026-01-20T13:46:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1987-2', 'hist-ticket-82-1987', 'prod-latte', 1, 15000, 0, '2026-01-20T13:46:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1987', 'hist-ticket-82-1987', 'cash', 30000, 'completed', '2026-01-20T13:46:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1988', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-20T08:57:12.000Z', '2026-01-20T08:57:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1988-1', 'hist-ticket-82-1988', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T08:57:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1988-2', 'hist-ticket-82-1988', 'prod-americano', 1, 12000, 0, '2026-01-20T08:57:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1988-3', 'hist-ticket-82-1988', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T08:57:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1988', 'hist-ticket-82-1988', 'cash', 41000, 'completed', '2026-01-20T08:57:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1989', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-20T19:43:41.000Z', '2026-01-20T19:43:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1989-1', 'hist-ticket-82-1989', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T19:43:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1989-2', 'hist-ticket-82-1989', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T19:43:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1989-3', 'hist-ticket-82-1989', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T19:43:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1989', 'hist-ticket-82-1989', 'cash', 43500, 'completed', '2026-01-20T19:43:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1990', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-20T08:22:42.000Z', '2026-01-20T08:22:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1990-1', 'hist-ticket-82-1990', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T08:22:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1990-2', 'hist-ticket-82-1990', 'prod-americano', 1, 12000, 0, '2026-01-20T08:22:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1990', 'hist-ticket-82-1990', 'cash', 26500, 'completed', '2026-01-20T08:22:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1991', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-01-20T17:45:46.000Z', '2026-01-20T17:45:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1991-1', 'hist-ticket-82-1991', 'prod-americano', 1, 12000, 0, '2026-01-20T17:45:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1991-2', 'hist-ticket-82-1991', 'prod-americano', 1, 12000, 0, '2026-01-20T17:45:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1991-3', 'hist-ticket-82-1991', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T17:45:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1991-4', 'hist-ticket-82-1991', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T17:45:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1991', 'hist-ticket-82-1991', 'cash', 53000, 'completed', '2026-01-20T17:45:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1992', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-20T16:13:27.000Z', '2026-01-20T16:13:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1992-1', 'hist-ticket-82-1992', 'prod-mocha', 1, 16500, 0, '2026-01-20T16:13:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1992-2', 'hist-ticket-82-1992', 'prod-americano', 1, 12000, 0, '2026-01-20T16:13:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1992', 'hist-ticket-82-1992', 'cash', 28500, 'completed', '2026-01-20T16:13:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1993', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-20T08:15:33.000Z', '2026-01-20T08:15:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1993-1', 'hist-ticket-82-1993', 'prod-latte', 1, 15000, 0, '2026-01-20T08:15:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1993', 'hist-ticket-82-1993', 'cash', 15000, 'completed', '2026-01-20T08:15:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1994', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-20T15:58:14.000Z', '2026-01-20T15:58:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1994-1', 'hist-ticket-82-1994', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T15:58:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1994', 'hist-ticket-82-1994', 'cash', 14500, 'completed', '2026-01-20T15:58:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1995', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-20T08:43:16.000Z', '2026-01-20T08:43:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1995-1', 'hist-ticket-82-1995', 'prod-americano', 1, 12000, 0, '2026-01-20T08:43:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1995-2', 'hist-ticket-82-1995', 'prod-mocha', 1, 16500, 0, '2026-01-20T08:43:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1995-3', 'hist-ticket-82-1995', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T08:43:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1995-4', 'hist-ticket-82-1995', 'prod-latte', 1, 15000, 0, '2026-01-20T08:43:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1995', 'hist-ticket-82-1995', 'cash', 58000, 'completed', '2026-01-20T08:43:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1996', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-20T10:57:29.000Z', '2026-01-20T10:57:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1996-1', 'hist-ticket-82-1996', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T10:57:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1996', 'hist-ticket-82-1996', 'cash', 14500, 'completed', '2026-01-20T10:57:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1997', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-20T15:11:04.000Z', '2026-01-20T15:11:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1997-1', 'hist-ticket-82-1997', 'prod-latte', 1, 15000, 0, '2026-01-20T15:11:04.000Z');