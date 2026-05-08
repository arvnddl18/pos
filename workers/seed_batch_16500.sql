INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3642-2', 'hist-ticket-144-3642', 'prod-latte', 1, 15000, 0, '2026-03-23T09:28:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3642-3', 'hist-ticket-144-3642', 'prod-latte', 1, 15000, 0, '2026-03-23T09:28:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3642', 'hist-ticket-144-3642', 'cash', 42000, 'completed', '2026-03-23T09:28:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3643', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-23T10:13:11.000Z', '2026-03-23T10:13:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3643-1', 'hist-ticket-144-3643', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T10:13:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3643', 'hist-ticket-144-3643', 'cash', 14500, 'completed', '2026-03-23T10:13:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3644', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-23T15:05:20.000Z', '2026-03-23T15:05:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3644-1', 'hist-ticket-144-3644', 'prod-americano', 1, 12000, 0, '2026-03-23T15:05:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3644', 'hist-ticket-144-3644', 'cash', 12000, 'completed', '2026-03-23T15:05:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3645', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-03-23T19:22:24.000Z', '2026-03-23T19:22:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3645-1', 'hist-ticket-144-3645', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T19:22:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3645-2', 'hist-ticket-144-3645', 'prod-latte', 1, 15000, 0, '2026-03-23T19:22:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3645-3', 'hist-ticket-144-3645', 'prod-americano', 1, 12000, 0, '2026-03-23T19:22:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3645', 'hist-ticket-144-3645', 'cash', 41500, 'completed', '2026-03-23T19:22:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3646', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-23T09:07:05.000Z', '2026-03-23T09:07:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3646-1', 'hist-ticket-144-3646', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T09:07:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3646-2', 'hist-ticket-144-3646', 'prod-mocha', 1, 16500, 0, '2026-03-23T09:07:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3646-3', 'hist-ticket-144-3646', 'prod-americano', 1, 12000, 0, '2026-03-23T09:07:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3646-4', 'hist-ticket-144-3646', 'prod-americano', 1, 12000, 0, '2026-03-23T09:07:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3646', 'hist-ticket-144-3646', 'cash', 55000, 'completed', '2026-03-23T09:07:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3647', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-23T12:28:05.000Z', '2026-03-23T12:28:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3647-1', 'hist-ticket-144-3647', 'prod-mocha', 1, 16500, 0, '2026-03-23T12:28:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3647', 'hist-ticket-144-3647', 'cash', 16500, 'completed', '2026-03-23T12:28:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3648', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-23T17:11:30.000Z', '2026-03-23T17:11:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3648-1', 'hist-ticket-144-3648', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T17:11:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3648-2', 'hist-ticket-144-3648', 'prod-mocha', 1, 16500, 0, '2026-03-23T17:11:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3648', 'hist-ticket-144-3648', 'cash', 31000, 'completed', '2026-03-23T17:11:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3649', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-23T17:25:00.000Z', '2026-03-23T17:25:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3649-1', 'hist-ticket-144-3649', 'prod-latte', 1, 15000, 0, '2026-03-23T17:25:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3649-2', 'hist-ticket-144-3649', 'prod-americano', 1, 12000, 0, '2026-03-23T17:25:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3649-3', 'hist-ticket-144-3649', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T17:25:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3649', 'hist-ticket-144-3649', 'cash', 41500, 'completed', '2026-03-23T17:25:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3650', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-23T17:09:38.000Z', '2026-03-23T17:09:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3650-1', 'hist-ticket-144-3650', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T17:09:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3650-2', 'hist-ticket-144-3650', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T17:09:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3650-3', 'hist-ticket-144-3650', 'prod-americano', 1, 12000, 0, '2026-03-23T17:09:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3650', 'hist-ticket-144-3650', 'cash', 41000, 'completed', '2026-03-23T17:09:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3651', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-23T09:27:17.000Z', '2026-03-23T09:27:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3651-1', 'hist-ticket-144-3651', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T09:27:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3651-2', 'hist-ticket-144-3651', 'prod-americano', 1, 12000, 0, '2026-03-23T09:27:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3651-3', 'hist-ticket-144-3651', 'prod-latte', 1, 15000, 0, '2026-03-23T09:27:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3651', 'hist-ticket-144-3651', 'cash', 41500, 'completed', '2026-03-23T09:27:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3652', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-23T09:21:15.000Z', '2026-03-23T09:21:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3652-1', 'hist-ticket-144-3652', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T09:21:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3652-2', 'hist-ticket-144-3652', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T09:21:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3652-3', 'hist-ticket-144-3652', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T09:21:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3652', 'hist-ticket-144-3652', 'cash', 43500, 'completed', '2026-03-23T09:21:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3653', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-23T11:16:14.000Z', '2026-03-23T11:16:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3653-1', 'hist-ticket-144-3653', 'prod-americano', 1, 12000, 0, '2026-03-23T11:16:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3653-2', 'hist-ticket-144-3653', 'prod-latte', 1, 15000, 0, '2026-03-23T11:16:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3653-3', 'hist-ticket-144-3653', 'prod-mocha', 1, 16500, 0, '2026-03-23T11:16:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3653', 'hist-ticket-144-3653', 'cash', 43500, 'completed', '2026-03-23T11:16:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3654', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-23T08:04:58.000Z', '2026-03-23T08:04:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3654-1', 'hist-ticket-144-3654', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T08:04:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3654-2', 'hist-ticket-144-3654', 'prod-americano', 1, 12000, 0, '2026-03-23T08:04:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3654-3', 'hist-ticket-144-3654', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T08:04:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3654', 'hist-ticket-144-3654', 'cash', 41000, 'completed', '2026-03-23T08:04:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3655', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-23T12:19:20.000Z', '2026-03-23T12:19:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3655-1', 'hist-ticket-144-3655', 'prod-americano', 1, 12000, 0, '2026-03-23T12:19:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3655-2', 'hist-ticket-144-3655', 'prod-latte', 1, 15000, 0, '2026-03-23T12:19:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3655-3', 'hist-ticket-144-3655', 'prod-americano', 1, 12000, 0, '2026-03-23T12:19:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3655-4', 'hist-ticket-144-3655', 'prod-americano', 1, 12000, 0, '2026-03-23T12:19:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3655', 'hist-ticket-144-3655', 'cash', 51000, 'completed', '2026-03-23T12:19:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3656', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-24T15:37:51.000Z', '2026-03-24T15:37:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3656-1', 'hist-ticket-145-3656', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T15:37:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3656-2', 'hist-ticket-145-3656', 'prod-mocha', 1, 16500, 0, '2026-03-24T15:37:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3656-3', 'hist-ticket-145-3656', 'prod-mocha', 1, 16500, 0, '2026-03-24T15:37:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3656', 'hist-ticket-145-3656', 'cash', 47500, 'completed', '2026-03-24T15:37:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3657', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-24T17:07:58.000Z', '2026-03-24T17:07:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3657-1', 'hist-ticket-145-3657', 'prod-latte', 1, 15000, 0, '2026-03-24T17:07:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3657-2', 'hist-ticket-145-3657', 'prod-latte', 1, 15000, 0, '2026-03-24T17:07:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3657', 'hist-ticket-145-3657', 'cash', 30000, 'completed', '2026-03-24T17:07:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3658', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-24T16:51:32.000Z', '2026-03-24T16:51:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3658-1', 'hist-ticket-145-3658', 'prod-mocha', 1, 16500, 0, '2026-03-24T16:51:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3658-2', 'hist-ticket-145-3658', 'prod-latte', 1, 15000, 0, '2026-03-24T16:51:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3658-3', 'hist-ticket-145-3658', 'prod-latte', 1, 15000, 0, '2026-03-24T16:51:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3658', 'hist-ticket-145-3658', 'cash', 46500, 'completed', '2026-03-24T16:51:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3659', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-24T14:28:55.000Z', '2026-03-24T14:28:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3659-1', 'hist-ticket-145-3659', 'prod-latte', 1, 15000, 0, '2026-03-24T14:28:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3659', 'hist-ticket-145-3659', 'cash', 15000, 'completed', '2026-03-24T14:28:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3660', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-03-24T14:30:28.000Z', '2026-03-24T14:30:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3660-1', 'hist-ticket-145-3660', 'prod-mocha', 1, 16500, 0, '2026-03-24T14:30:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3660-2', 'hist-ticket-145-3660', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T14:30:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3660-3', 'hist-ticket-145-3660', 'prod-latte', 1, 15000, 0, '2026-03-24T14:30:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3660-4', 'hist-ticket-145-3660', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T14:30:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3660', 'hist-ticket-145-3660', 'cash', 60500, 'completed', '2026-03-24T14:30:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3661', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-03-24T12:06:14.000Z', '2026-03-24T12:06:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3661-1', 'hist-ticket-145-3661', 'prod-latte', 1, 15000, 0, '2026-03-24T12:06:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3661-2', 'hist-ticket-145-3661', 'prod-mocha', 1, 16500, 0, '2026-03-24T12:06:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3661-3', 'hist-ticket-145-3661', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T12:06:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3661-4', 'hist-ticket-145-3661', 'prod-mocha', 1, 16500, 0, '2026-03-24T12:06:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3661', 'hist-ticket-145-3661', 'cash', 62500, 'completed', '2026-03-24T12:06:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3662', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-24T18:28:50.000Z', '2026-03-24T18:28:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3662-1', 'hist-ticket-145-3662', 'prod-americano', 1, 12000, 0, '2026-03-24T18:28:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3662-2', 'hist-ticket-145-3662', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T18:28:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3662-3', 'hist-ticket-145-3662', 'prod-latte', 1, 15000, 0, '2026-03-24T18:28:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3662-4', 'hist-ticket-145-3662', 'prod-mocha', 1, 16500, 0, '2026-03-24T18:28:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3662', 'hist-ticket-145-3662', 'cash', 58000, 'completed', '2026-03-24T18:28:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3663', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-03-24T09:02:12.000Z', '2026-03-24T09:02:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3663-1', 'hist-ticket-145-3663', 'prod-latte', 1, 15000, 0, '2026-03-24T09:02:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3663-2', 'hist-ticket-145-3663', 'prod-mocha', 1, 16500, 0, '2026-03-24T09:02:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3663-3', 'hist-ticket-145-3663', 'prod-mocha', 1, 16500, 0, '2026-03-24T09:02:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3663-4', 'hist-ticket-145-3663', 'prod-latte', 1, 15000, 0, '2026-03-24T09:02:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3663', 'hist-ticket-145-3663', 'cash', 63000, 'completed', '2026-03-24T09:02:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3664', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-24T15:56:01.000Z', '2026-03-24T15:56:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3664-1', 'hist-ticket-145-3664', 'prod-americano', 1, 12000, 0, '2026-03-24T15:56:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3664-2', 'hist-ticket-145-3664', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T15:56:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3664-3', 'hist-ticket-145-3664', 'prod-latte', 1, 15000, 0, '2026-03-24T15:56:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3664', 'hist-ticket-145-3664', 'cash', 41500, 'completed', '2026-03-24T15:56:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3665', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-24T08:51:50.000Z', '2026-03-24T08:51:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3665-1', 'hist-ticket-145-3665', 'prod-latte', 1, 15000, 0, '2026-03-24T08:51:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3665-2', 'hist-ticket-145-3665', 'prod-americano', 1, 12000, 0, '2026-03-24T08:51:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3665-3', 'hist-ticket-145-3665', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T08:51:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3665', 'hist-ticket-145-3665', 'cash', 41500, 'completed', '2026-03-24T08:51:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3666', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-24T13:08:05.000Z', '2026-03-24T13:08:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3666-1', 'hist-ticket-145-3666', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T13:08:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3666-2', 'hist-ticket-145-3666', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T13:08:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3666-3', 'hist-ticket-145-3666', 'prod-americano', 1, 12000, 0, '2026-03-24T13:08:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3666', 'hist-ticket-145-3666', 'cash', 41000, 'completed', '2026-03-24T13:08:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3667', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-24T19:40:46.000Z', '2026-03-24T19:40:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3667-1', 'hist-ticket-145-3667', 'prod-mocha', 1, 16500, 0, '2026-03-24T19:40:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3667-2', 'hist-ticket-145-3667', 'prod-americano', 1, 12000, 0, '2026-03-24T19:40:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3667-3', 'hist-ticket-145-3667', 'prod-americano', 1, 12000, 0, '2026-03-24T19:40:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3667-4', 'hist-ticket-145-3667', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T19:40:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3667', 'hist-ticket-145-3667', 'cash', 55000, 'completed', '2026-03-24T19:40:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3668', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-24T14:04:37.000Z', '2026-03-24T14:04:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3668-1', 'hist-ticket-145-3668', 'prod-americano', 1, 12000, 0, '2026-03-24T14:04:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3668', 'hist-ticket-145-3668', 'cash', 12000, 'completed', '2026-03-24T14:04:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3669', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-24T09:42:10.000Z', '2026-03-24T09:42:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3669-1', 'hist-ticket-145-3669', 'prod-mocha', 1, 16500, 0, '2026-03-24T09:42:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3669-2', 'hist-ticket-145-3669', 'prod-mocha', 1, 16500, 0, '2026-03-24T09:42:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3669', 'hist-ticket-145-3669', 'cash', 33000, 'completed', '2026-03-24T09:42:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3670', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-24T17:34:18.000Z', '2026-03-24T17:34:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3670-1', 'hist-ticket-145-3670', 'prod-latte', 1, 15000, 0, '2026-03-24T17:34:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3670', 'hist-ticket-145-3670', 'cash', 15000, 'completed', '2026-03-24T17:34:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3671', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-24T09:33:12.000Z', '2026-03-24T09:33:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3671-1', 'hist-ticket-145-3671', 'prod-mocha', 1, 16500, 0, '2026-03-24T09:33:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3671-2', 'hist-ticket-145-3671', 'prod-latte', 1, 15000, 0, '2026-03-24T09:33:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3671-3', 'hist-ticket-145-3671', 'prod-mocha', 1, 16500, 0, '2026-03-24T09:33:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3671', 'hist-ticket-145-3671', 'cash', 48000, 'completed', '2026-03-24T09:33:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3672', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-03-24T16:57:04.000Z', '2026-03-24T16:57:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3672-1', 'hist-ticket-145-3672', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T16:57:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3672-2', 'hist-ticket-145-3672', 'prod-latte', 1, 15000, 0, '2026-03-24T16:57:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3672-3', 'hist-ticket-145-3672', 'prod-latte', 1, 15000, 0, '2026-03-24T16:57:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3672-4', 'hist-ticket-145-3672', 'prod-mocha', 1, 16500, 0, '2026-03-24T16:57:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3672', 'hist-ticket-145-3672', 'cash', 61000, 'completed', '2026-03-24T16:57:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3673', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-03-24T16:23:36.000Z', '2026-03-24T16:23:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3673-1', 'hist-ticket-145-3673', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T16:23:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3673-2', 'hist-ticket-145-3673', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T16:23:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3673-3', 'hist-ticket-145-3673', 'prod-mocha', 1, 16500, 0, '2026-03-24T16:23:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3673', 'hist-ticket-145-3673', 'cash', 45500, 'completed', '2026-03-24T16:23:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3674', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-03-24T17:28:43.000Z', '2026-03-24T17:28:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3674-1', 'hist-ticket-145-3674', 'prod-latte', 1, 15000, 0, '2026-03-24T17:28:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3674-2', 'hist-ticket-145-3674', 'prod-cappuccino', 1, 14500, 0, '2026-03-24T17:28:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3674', 'hist-ticket-145-3674', 'cash', 29500, 'completed', '2026-03-24T17:28:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3675', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-24T19:50:30.000Z', '2026-03-24T19:50:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3675-1', 'hist-ticket-145-3675', 'prod-americano', 1, 12000, 0, '2026-03-24T19:50:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3675-2', 'hist-ticket-145-3675', 'prod-latte', 1, 15000, 0, '2026-03-24T19:50:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3675', 'hist-ticket-145-3675', 'cash', 27000, 'completed', '2026-03-24T19:50:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3676', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-03-24T19:49:45.000Z', '2026-03-24T19:49:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3676-1', 'hist-ticket-145-3676', 'prod-mocha', 1, 16500, 0, '2026-03-24T19:49:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3676-2', 'hist-ticket-145-3676', 'prod-mocha', 1, 16500, 0, '2026-03-24T19:49:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3676', 'hist-ticket-145-3676', 'cash', 33000, 'completed', '2026-03-24T19:49:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-145-3677', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-24T16:07:17.000Z', '2026-03-24T16:07:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3677-1', 'hist-ticket-145-3677', 'prod-mocha', 1, 16500, 0, '2026-03-24T16:07:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3677-2', 'hist-ticket-145-3677', 'prod-mocha', 1, 16500, 0, '2026-03-24T16:07:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3677-3', 'hist-ticket-145-3677', 'prod-americano', 1, 12000, 0, '2026-03-24T16:07:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-145-3677-4', 'hist-ticket-145-3677', 'prod-mocha', 1, 16500, 0, '2026-03-24T16:07:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-145-3677', 'hist-ticket-145-3677', 'cash', 61500, 'completed', '2026-03-24T16:07:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3678', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-25T09:05:14.000Z', '2026-03-25T09:05:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3678-1', 'hist-ticket-146-3678', 'prod-mocha', 1, 16500, 0, '2026-03-25T09:05:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3678-2', 'hist-ticket-146-3678', 'prod-latte', 1, 15000, 0, '2026-03-25T09:05:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3678', 'hist-ticket-146-3678', 'cash', 31500, 'completed', '2026-03-25T09:05:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3679', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-03-25T19:43:57.000Z', '2026-03-25T19:43:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3679-1', 'hist-ticket-146-3679', 'prod-americano', 1, 12000, 0, '2026-03-25T19:43:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3679', 'hist-ticket-146-3679', 'cash', 12000, 'completed', '2026-03-25T19:43:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3680', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-25T12:42:42.000Z', '2026-03-25T12:42:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3680-1', 'hist-ticket-146-3680', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T12:42:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3680-2', 'hist-ticket-146-3680', 'prod-mocha', 1, 16500, 0, '2026-03-25T12:42:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3680-3', 'hist-ticket-146-3680', 'prod-mocha', 1, 16500, 0, '2026-03-25T12:42:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3680', 'hist-ticket-146-3680', 'cash', 47500, 'completed', '2026-03-25T12:42:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3681', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-03-25T18:44:34.000Z', '2026-03-25T18:44:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3681-1', 'hist-ticket-146-3681', 'prod-latte', 1, 15000, 0, '2026-03-25T18:44:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3681-2', 'hist-ticket-146-3681', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T18:44:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3681-3', 'hist-ticket-146-3681', 'prod-mocha', 1, 16500, 0, '2026-03-25T18:44:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3681', 'hist-ticket-146-3681', 'cash', 46000, 'completed', '2026-03-25T18:44:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3682', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-25T14:23:21.000Z', '2026-03-25T14:23:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3682-1', 'hist-ticket-146-3682', 'prod-mocha', 1, 16500, 0, '2026-03-25T14:23:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3682-2', 'hist-ticket-146-3682', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T14:23:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3682-3', 'hist-ticket-146-3682', 'prod-americano', 1, 12000, 0, '2026-03-25T14:23:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3682', 'hist-ticket-146-3682', 'cash', 43000, 'completed', '2026-03-25T14:23:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3683', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-25T10:12:24.000Z', '2026-03-25T10:12:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3683-1', 'hist-ticket-146-3683', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T10:12:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3683-2', 'hist-ticket-146-3683', 'prod-mocha', 1, 16500, 0, '2026-03-25T10:12:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3683-3', 'hist-ticket-146-3683', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T10:12:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3683-4', 'hist-ticket-146-3683', 'prod-latte', 1, 15000, 0, '2026-03-25T10:12:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3683', 'hist-ticket-146-3683', 'cash', 60500, 'completed', '2026-03-25T10:12:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3684', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-25T12:57:19.000Z', '2026-03-25T12:57:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3684-1', 'hist-ticket-146-3684', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T12:57:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3684-2', 'hist-ticket-146-3684', 'prod-americano', 1, 12000, 0, '2026-03-25T12:57:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3684-3', 'hist-ticket-146-3684', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T12:57:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3684', 'hist-ticket-146-3684', 'cash', 41000, 'completed', '2026-03-25T12:57:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3685', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-25T11:44:40.000Z', '2026-03-25T11:44:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3685-1', 'hist-ticket-146-3685', 'prod-mocha', 1, 16500, 0, '2026-03-25T11:44:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3685-2', 'hist-ticket-146-3685', 'prod-mocha', 1, 16500, 0, '2026-03-25T11:44:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3685-3', 'hist-ticket-146-3685', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T11:44:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3685-4', 'hist-ticket-146-3685', 'prod-americano', 1, 12000, 0, '2026-03-25T11:44:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3685', 'hist-ticket-146-3685', 'cash', 59500, 'completed', '2026-03-25T11:44:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3686', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-25T08:33:08.000Z', '2026-03-25T08:33:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3686-1', 'hist-ticket-146-3686', 'prod-mocha', 1, 16500, 0, '2026-03-25T08:33:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3686-2', 'hist-ticket-146-3686', 'prod-americano', 1, 12000, 0, '2026-03-25T08:33:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3686-3', 'hist-ticket-146-3686', 'prod-americano', 1, 12000, 0, '2026-03-25T08:33:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3686', 'hist-ticket-146-3686', 'cash', 40500, 'completed', '2026-03-25T08:33:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3687', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-25T15:06:15.000Z', '2026-03-25T15:06:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3687-1', 'hist-ticket-146-3687', 'prod-latte', 1, 15000, 0, '2026-03-25T15:06:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3687', 'hist-ticket-146-3687', 'cash', 15000, 'completed', '2026-03-25T15:06:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3688', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-25T12:01:32.000Z', '2026-03-25T12:01:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3688-1', 'hist-ticket-146-3688', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T12:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3688-2', 'hist-ticket-146-3688', 'prod-americano', 1, 12000, 0, '2026-03-25T12:01:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3688', 'hist-ticket-146-3688', 'cash', 26500, 'completed', '2026-03-25T12:01:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3689', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-03-25T08:05:17.000Z', '2026-03-25T08:05:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3689-1', 'hist-ticket-146-3689', 'prod-latte', 1, 15000, 0, '2026-03-25T08:05:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3689', 'hist-ticket-146-3689', 'cash', 15000, 'completed', '2026-03-25T08:05:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3690', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-25T15:23:31.000Z', '2026-03-25T15:23:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3690-1', 'hist-ticket-146-3690', 'prod-americano', 1, 12000, 0, '2026-03-25T15:23:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3690', 'hist-ticket-146-3690', 'cash', 12000, 'completed', '2026-03-25T15:23:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3691', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-25T11:11:10.000Z', '2026-03-25T11:11:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3691-1', 'hist-ticket-146-3691', 'prod-americano', 1, 12000, 0, '2026-03-25T11:11:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3691-2', 'hist-ticket-146-3691', 'prod-mocha', 1, 16500, 0, '2026-03-25T11:11:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3691-3', 'hist-ticket-146-3691', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T11:11:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3691-4', 'hist-ticket-146-3691', 'prod-mocha', 1, 16500, 0, '2026-03-25T11:11:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3691', 'hist-ticket-146-3691', 'cash', 59500, 'completed', '2026-03-25T11:11:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3692', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-25T16:58:29.000Z', '2026-03-25T16:58:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3692-1', 'hist-ticket-146-3692', 'prod-mocha', 1, 16500, 0, '2026-03-25T16:58:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3692-2', 'hist-ticket-146-3692', 'prod-mocha', 1, 16500, 0, '2026-03-25T16:58:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3692-3', 'hist-ticket-146-3692', 'prod-mocha', 1, 16500, 0, '2026-03-25T16:58:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3692-4', 'hist-ticket-146-3692', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T16:58:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3692', 'hist-ticket-146-3692', 'cash', 64000, 'completed', '2026-03-25T16:58:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3693', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-03-25T08:34:22.000Z', '2026-03-25T08:34:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3693-1', 'hist-ticket-146-3693', 'prod-latte', 1, 15000, 0, '2026-03-25T08:34:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3693-2', 'hist-ticket-146-3693', 'prod-americano', 1, 12000, 0, '2026-03-25T08:34:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3693-3', 'hist-ticket-146-3693', 'prod-mocha', 1, 16500, 0, '2026-03-25T08:34:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3693-4', 'hist-ticket-146-3693', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T08:34:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3693', 'hist-ticket-146-3693', 'cash', 58000, 'completed', '2026-03-25T08:34:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3694', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-25T17:34:23.000Z', '2026-03-25T17:34:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3694-1', 'hist-ticket-146-3694', 'prod-latte', 1, 15000, 0, '2026-03-25T17:34:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3694-2', 'hist-ticket-146-3694', 'prod-americano', 1, 12000, 0, '2026-03-25T17:34:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3694', 'hist-ticket-146-3694', 'cash', 27000, 'completed', '2026-03-25T17:34:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3695', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-25T10:40:58.000Z', '2026-03-25T10:40:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3695-1', 'hist-ticket-146-3695', 'prod-mocha', 1, 16500, 0, '2026-03-25T10:40:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3695-2', 'hist-ticket-146-3695', 'prod-mocha', 1, 16500, 0, '2026-03-25T10:40:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3695', 'hist-ticket-146-3695', 'cash', 33000, 'completed', '2026-03-25T10:40:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3696', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-25T11:49:42.000Z', '2026-03-25T11:49:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3696-1', 'hist-ticket-146-3696', 'prod-americano', 1, 12000, 0, '2026-03-25T11:49:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3696', 'hist-ticket-146-3696', 'cash', 12000, 'completed', '2026-03-25T11:49:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3697', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-25T12:47:38.000Z', '2026-03-25T12:47:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3697-1', 'hist-ticket-146-3697', 'prod-latte', 1, 15000, 0, '2026-03-25T12:47:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3697-2', 'hist-ticket-146-3697', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T12:47:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3697', 'hist-ticket-146-3697', 'cash', 29500, 'completed', '2026-03-25T12:47:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3698', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-25T11:55:30.000Z', '2026-03-25T11:55:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3698-1', 'hist-ticket-146-3698', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T11:55:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3698-2', 'hist-ticket-146-3698', 'prod-latte', 1, 15000, 0, '2026-03-25T11:55:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3698-3', 'hist-ticket-146-3698', 'prod-americano', 1, 12000, 0, '2026-03-25T11:55:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3698-4', 'hist-ticket-146-3698', 'prod-americano', 1, 12000, 0, '2026-03-25T11:55:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3698', 'hist-ticket-146-3698', 'cash', 53500, 'completed', '2026-03-25T11:55:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3699', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-25T13:06:36.000Z', '2026-03-25T13:06:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3699-1', 'hist-ticket-146-3699', 'prod-mocha', 1, 16500, 0, '2026-03-25T13:06:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3699', 'hist-ticket-146-3699', 'cash', 16500, 'completed', '2026-03-25T13:06:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3700', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-25T09:43:44.000Z', '2026-03-25T09:43:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3700-1', 'hist-ticket-146-3700', 'prod-americano', 1, 12000, 0, '2026-03-25T09:43:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3700-2', 'hist-ticket-146-3700', 'prod-mocha', 1, 16500, 0, '2026-03-25T09:43:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3700-3', 'hist-ticket-146-3700', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T09:43:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3700', 'hist-ticket-146-3700', 'cash', 43000, 'completed', '2026-03-25T09:43:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3701', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-03-25T15:58:59.000Z', '2026-03-25T15:58:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3701-1', 'hist-ticket-146-3701', 'prod-mocha', 1, 16500, 0, '2026-03-25T15:58:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3701-2', 'hist-ticket-146-3701', 'prod-americano', 1, 12000, 0, '2026-03-25T15:58:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3701', 'hist-ticket-146-3701', 'cash', 28500, 'completed', '2026-03-25T15:58:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3702', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-25T10:09:33.000Z', '2026-03-25T10:09:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3702-1', 'hist-ticket-146-3702', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T10:09:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3702-2', 'hist-ticket-146-3702', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T10:09:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3702-3', 'hist-ticket-146-3702', 'prod-latte', 1, 15000, 0, '2026-03-25T10:09:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3702', 'hist-ticket-146-3702', 'cash', 44000, 'completed', '2026-03-25T10:09:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-146-3703', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-25T13:34:02.000Z', '2026-03-25T13:34:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3703-1', 'hist-ticket-146-3703', 'prod-cappuccino', 1, 14500, 0, '2026-03-25T13:34:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3703-2', 'hist-ticket-146-3703', 'prod-americano', 1, 12000, 0, '2026-03-25T13:34:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-146-3703-3', 'hist-ticket-146-3703', 'prod-americano', 1, 12000, 0, '2026-03-25T13:34:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-146-3703', 'hist-ticket-146-3703', 'cash', 38500, 'completed', '2026-03-25T13:34:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3704', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-26T15:44:36.000Z', '2026-03-26T15:44:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3704-1', 'hist-ticket-147-3704', 'prod-latte', 1, 15000, 0, '2026-03-26T15:44:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3704', 'hist-ticket-147-3704', 'cash', 15000, 'completed', '2026-03-26T15:44:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3705', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-03-26T13:26:54.000Z', '2026-03-26T13:26:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3705-1', 'hist-ticket-147-3705', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T13:26:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3705-2', 'hist-ticket-147-3705', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T13:26:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3705', 'hist-ticket-147-3705', 'cash', 29000, 'completed', '2026-03-26T13:26:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3706', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-03-26T13:22:59.000Z', '2026-03-26T13:22:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3706-1', 'hist-ticket-147-3706', 'prod-mocha', 1, 16500, 0, '2026-03-26T13:22:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3706-2', 'hist-ticket-147-3706', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T13:22:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3706-3', 'hist-ticket-147-3706', 'prod-americano', 1, 12000, 0, '2026-03-26T13:22:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3706', 'hist-ticket-147-3706', 'cash', 43000, 'completed', '2026-03-26T13:22:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3707', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-03-26T08:37:26.000Z', '2026-03-26T08:37:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3707-1', 'hist-ticket-147-3707', 'prod-latte', 1, 15000, 0, '2026-03-26T08:37:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3707-2', 'hist-ticket-147-3707', 'prod-latte', 1, 15000, 0, '2026-03-26T08:37:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3707-3', 'hist-ticket-147-3707', 'prod-mocha', 1, 16500, 0, '2026-03-26T08:37:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3707', 'hist-ticket-147-3707', 'cash', 46500, 'completed', '2026-03-26T08:37:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3708', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-26T12:20:59.000Z', '2026-03-26T12:20:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3708-1', 'hist-ticket-147-3708', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T12:20:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3708-2', 'hist-ticket-147-3708', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T12:20:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3708', 'hist-ticket-147-3708', 'cash', 29000, 'completed', '2026-03-26T12:20:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3709', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-26T14:28:13.000Z', '2026-03-26T14:28:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3709-1', 'hist-ticket-147-3709', 'prod-latte', 1, 15000, 0, '2026-03-26T14:28:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3709', 'hist-ticket-147-3709', 'cash', 15000, 'completed', '2026-03-26T14:28:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3710', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-26T13:50:53.000Z', '2026-03-26T13:50:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3710-1', 'hist-ticket-147-3710', 'prod-mocha', 1, 16500, 0, '2026-03-26T13:50:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3710', 'hist-ticket-147-3710', 'cash', 16500, 'completed', '2026-03-26T13:50:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3711', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-26T14:06:21.000Z', '2026-03-26T14:06:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3711-1', 'hist-ticket-147-3711', 'prod-latte', 1, 15000, 0, '2026-03-26T14:06:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3711-2', 'hist-ticket-147-3711', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T14:06:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3711-3', 'hist-ticket-147-3711', 'prod-latte', 1, 15000, 0, '2026-03-26T14:06:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3711-4', 'hist-ticket-147-3711', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T14:06:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3711', 'hist-ticket-147-3711', 'cash', 59000, 'completed', '2026-03-26T14:06:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3712', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-26T15:05:34.000Z', '2026-03-26T15:05:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3712-1', 'hist-ticket-147-3712', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T15:05:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3712', 'hist-ticket-147-3712', 'cash', 14500, 'completed', '2026-03-26T15:05:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3713', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-26T19:19:05.000Z', '2026-03-26T19:19:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3713-1', 'hist-ticket-147-3713', 'prod-latte', 1, 15000, 0, '2026-03-26T19:19:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3713-2', 'hist-ticket-147-3713', 'prod-latte', 1, 15000, 0, '2026-03-26T19:19:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3713-3', 'hist-ticket-147-3713', 'prod-americano', 1, 12000, 0, '2026-03-26T19:19:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3713', 'hist-ticket-147-3713', 'cash', 42000, 'completed', '2026-03-26T19:19:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3714', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-03-26T11:49:51.000Z', '2026-03-26T11:49:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3714-1', 'hist-ticket-147-3714', 'prod-mocha', 1, 16500, 0, '2026-03-26T11:49:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3714', 'hist-ticket-147-3714', 'cash', 16500, 'completed', '2026-03-26T11:49:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3715', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-03-26T13:39:17.000Z', '2026-03-26T13:39:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3715-1', 'hist-ticket-147-3715', 'prod-americano', 1, 12000, 0, '2026-03-26T13:39:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3715-2', 'hist-ticket-147-3715', 'prod-americano', 1, 12000, 0, '2026-03-26T13:39:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3715-3', 'hist-ticket-147-3715', 'prod-americano', 1, 12000, 0, '2026-03-26T13:39:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3715-4', 'hist-ticket-147-3715', 'prod-mocha', 1, 16500, 0, '2026-03-26T13:39:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3715', 'hist-ticket-147-3715', 'cash', 52500, 'completed', '2026-03-26T13:39:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3716', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-26T08:26:34.000Z', '2026-03-26T08:26:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3716-1', 'hist-ticket-147-3716', 'prod-mocha', 1, 16500, 0, '2026-03-26T08:26:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3716-2', 'hist-ticket-147-3716', 'prod-latte', 1, 15000, 0, '2026-03-26T08:26:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3716-3', 'hist-ticket-147-3716', 'prod-latte', 1, 15000, 0, '2026-03-26T08:26:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3716', 'hist-ticket-147-3716', 'cash', 46500, 'completed', '2026-03-26T08:26:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3717', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-26T16:09:20.000Z', '2026-03-26T16:09:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3717-1', 'hist-ticket-147-3717', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T16:09:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3717-2', 'hist-ticket-147-3717', 'prod-mocha', 1, 16500, 0, '2026-03-26T16:09:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3717-3', 'hist-ticket-147-3717', 'prod-latte', 1, 15000, 0, '2026-03-26T16:09:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3717-4', 'hist-ticket-147-3717', 'prod-latte', 1, 15000, 0, '2026-03-26T16:09:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3717', 'hist-ticket-147-3717', 'cash', 61000, 'completed', '2026-03-26T16:09:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3718', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-26T11:30:56.000Z', '2026-03-26T11:30:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3718-1', 'hist-ticket-147-3718', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T11:30:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3718', 'hist-ticket-147-3718', 'cash', 14500, 'completed', '2026-03-26T11:30:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3719', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-03-26T08:37:31.000Z', '2026-03-26T08:37:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3719-1', 'hist-ticket-147-3719', 'prod-latte', 1, 15000, 0, '2026-03-26T08:37:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3719-2', 'hist-ticket-147-3719', 'prod-americano', 1, 12000, 0, '2026-03-26T08:37:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3719-3', 'hist-ticket-147-3719', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T08:37:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3719', 'hist-ticket-147-3719', 'cash', 41500, 'completed', '2026-03-26T08:37:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3720', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-26T11:43:01.000Z', '2026-03-26T11:43:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3720-1', 'hist-ticket-147-3720', 'prod-americano', 1, 12000, 0, '2026-03-26T11:43:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3720-2', 'hist-ticket-147-3720', 'prod-latte', 1, 15000, 0, '2026-03-26T11:43:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3720-3', 'hist-ticket-147-3720', 'prod-mocha', 1, 16500, 0, '2026-03-26T11:43:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3720-4', 'hist-ticket-147-3720', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T11:43:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3720', 'hist-ticket-147-3720', 'cash', 58000, 'completed', '2026-03-26T11:43:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3721', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-26T18:46:50.000Z', '2026-03-26T18:46:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3721-1', 'hist-ticket-147-3721', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T18:46:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3721-2', 'hist-ticket-147-3721', 'prod-mocha', 1, 16500, 0, '2026-03-26T18:46:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3721-3', 'hist-ticket-147-3721', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T18:46:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3721-4', 'hist-ticket-147-3721', 'prod-latte', 1, 15000, 0, '2026-03-26T18:46:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3721', 'hist-ticket-147-3721', 'cash', 60500, 'completed', '2026-03-26T18:46:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3722', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-26T16:39:13.000Z', '2026-03-26T16:39:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3722-1', 'hist-ticket-147-3722', 'prod-latte', 1, 15000, 0, '2026-03-26T16:39:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3722-2', 'hist-ticket-147-3722', 'prod-americano', 1, 12000, 0, '2026-03-26T16:39:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3722-3', 'hist-ticket-147-3722', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T16:39:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3722-4', 'hist-ticket-147-3722', 'prod-cappuccino', 1, 14500, 0, '2026-03-26T16:39:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3722', 'hist-ticket-147-3722', 'cash', 56000, 'completed', '2026-03-26T16:39:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-147-3723', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-26T12:26:13.000Z', '2026-03-26T12:26:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3723-1', 'hist-ticket-147-3723', 'prod-americano', 1, 12000, 0, '2026-03-26T12:26:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3723-2', 'hist-ticket-147-3723', 'prod-americano', 1, 12000, 0, '2026-03-26T12:26:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3723-3', 'hist-ticket-147-3723', 'prod-americano', 1, 12000, 0, '2026-03-26T12:26:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-147-3723-4', 'hist-ticket-147-3723', 'prod-americano', 1, 12000, 0, '2026-03-26T12:26:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-147-3723', 'hist-ticket-147-3723', 'cash', 48000, 'completed', '2026-03-26T12:26:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3724', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-27T12:52:29.000Z', '2026-03-27T12:52:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3724-1', 'hist-ticket-148-3724', 'prod-mocha', 1, 16500, 0, '2026-03-27T12:52:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3724-2', 'hist-ticket-148-3724', 'prod-americano', 1, 12000, 0, '2026-03-27T12:52:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3724-3', 'hist-ticket-148-3724', 'prod-americano', 1, 12000, 0, '2026-03-27T12:52:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3724', 'hist-ticket-148-3724', 'cash', 40500, 'completed', '2026-03-27T12:52:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3725', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-03-27T16:48:31.000Z', '2026-03-27T16:48:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3725-1', 'hist-ticket-148-3725', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T16:48:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3725', 'hist-ticket-148-3725', 'cash', 14500, 'completed', '2026-03-27T16:48:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3726', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-03-27T14:09:57.000Z', '2026-03-27T14:09:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3726-1', 'hist-ticket-148-3726', 'prod-americano', 1, 12000, 0, '2026-03-27T14:09:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3726-2', 'hist-ticket-148-3726', 'prod-latte', 1, 15000, 0, '2026-03-27T14:09:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3726-3', 'hist-ticket-148-3726', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T14:09:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3726-4', 'hist-ticket-148-3726', 'prod-mocha', 1, 16500, 0, '2026-03-27T14:09:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3726', 'hist-ticket-148-3726', 'cash', 58000, 'completed', '2026-03-27T14:09:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3727', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-27T15:19:13.000Z', '2026-03-27T15:19:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3727-1', 'hist-ticket-148-3727', 'prod-americano', 1, 12000, 0, '2026-03-27T15:19:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3727-2', 'hist-ticket-148-3727', 'prod-latte', 1, 15000, 0, '2026-03-27T15:19:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3727-3', 'hist-ticket-148-3727', 'prod-mocha', 1, 16500, 0, '2026-03-27T15:19:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3727', 'hist-ticket-148-3727', 'cash', 43500, 'completed', '2026-03-27T15:19:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3728', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-03-27T14:42:41.000Z', '2026-03-27T14:42:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3728-1', 'hist-ticket-148-3728', 'prod-latte', 1, 15000, 0, '2026-03-27T14:42:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3728', 'hist-ticket-148-3728', 'cash', 15000, 'completed', '2026-03-27T14:42:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3729', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-27T13:02:38.000Z', '2026-03-27T13:02:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3729-1', 'hist-ticket-148-3729', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T13:02:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3729-2', 'hist-ticket-148-3729', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T13:02:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3729', 'hist-ticket-148-3729', 'cash', 29000, 'completed', '2026-03-27T13:02:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3730', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-27T13:49:14.000Z', '2026-03-27T13:49:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3730-1', 'hist-ticket-148-3730', 'prod-latte', 1, 15000, 0, '2026-03-27T13:49:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3730-2', 'hist-ticket-148-3730', 'prod-latte', 1, 15000, 0, '2026-03-27T13:49:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3730-3', 'hist-ticket-148-3730', 'prod-latte', 1, 15000, 0, '2026-03-27T13:49:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3730-4', 'hist-ticket-148-3730', 'prod-americano', 1, 12000, 0, '2026-03-27T13:49:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3730', 'hist-ticket-148-3730', 'cash', 57000, 'completed', '2026-03-27T13:49:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3731', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-03-27T14:23:52.000Z', '2026-03-27T14:23:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3731-1', 'hist-ticket-148-3731', 'prod-mocha', 1, 16500, 0, '2026-03-27T14:23:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3731-2', 'hist-ticket-148-3731', 'prod-mocha', 1, 16500, 0, '2026-03-27T14:23:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3731-3', 'hist-ticket-148-3731', 'prod-latte', 1, 15000, 0, '2026-03-27T14:23:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3731', 'hist-ticket-148-3731', 'cash', 48000, 'completed', '2026-03-27T14:23:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3732', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-27T13:41:44.000Z', '2026-03-27T13:41:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3732-1', 'hist-ticket-148-3732', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T13:41:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3732-2', 'hist-ticket-148-3732', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T13:41:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3732-3', 'hist-ticket-148-3732', 'prod-americano', 1, 12000, 0, '2026-03-27T13:41:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3732', 'hist-ticket-148-3732', 'cash', 41000, 'completed', '2026-03-27T13:41:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3733', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-27T17:57:21.000Z', '2026-03-27T17:57:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3733-1', 'hist-ticket-148-3733', 'prod-mocha', 1, 16500, 0, '2026-03-27T17:57:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3733-2', 'hist-ticket-148-3733', 'prod-latte', 1, 15000, 0, '2026-03-27T17:57:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3733', 'hist-ticket-148-3733', 'cash', 31500, 'completed', '2026-03-27T17:57:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3734', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-27T09:37:05.000Z', '2026-03-27T09:37:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3734-1', 'hist-ticket-148-3734', 'prod-mocha', 1, 16500, 0, '2026-03-27T09:37:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3734-2', 'hist-ticket-148-3734', 'prod-mocha', 1, 16500, 0, '2026-03-27T09:37:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3734-3', 'hist-ticket-148-3734', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T09:37:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3734-4', 'hist-ticket-148-3734', 'prod-mocha', 1, 16500, 0, '2026-03-27T09:37:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3734', 'hist-ticket-148-3734', 'cash', 64000, 'completed', '2026-03-27T09:37:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3735', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-27T09:18:26.000Z', '2026-03-27T09:18:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3735-1', 'hist-ticket-148-3735', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T09:18:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3735', 'hist-ticket-148-3735', 'cash', 14500, 'completed', '2026-03-27T09:18:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3736', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-27T17:52:01.000Z', '2026-03-27T17:52:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3736-1', 'hist-ticket-148-3736', 'prod-latte', 1, 15000, 0, '2026-03-27T17:52:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3736-2', 'hist-ticket-148-3736', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T17:52:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3736', 'hist-ticket-148-3736', 'cash', 29500, 'completed', '2026-03-27T17:52:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3737', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-27T13:26:24.000Z', '2026-03-27T13:26:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3737-1', 'hist-ticket-148-3737', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T13:26:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3737-2', 'hist-ticket-148-3737', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T13:26:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3737-3', 'hist-ticket-148-3737', 'prod-mocha', 1, 16500, 0, '2026-03-27T13:26:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3737', 'hist-ticket-148-3737', 'cash', 45500, 'completed', '2026-03-27T13:26:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3738', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-27T19:12:02.000Z', '2026-03-27T19:12:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3738-1', 'hist-ticket-148-3738', 'prod-latte', 1, 15000, 0, '2026-03-27T19:12:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3738-2', 'hist-ticket-148-3738', 'prod-americano', 1, 12000, 0, '2026-03-27T19:12:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3738-3', 'hist-ticket-148-3738', 'prod-latte', 1, 15000, 0, '2026-03-27T19:12:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3738-4', 'hist-ticket-148-3738', 'prod-mocha', 1, 16500, 0, '2026-03-27T19:12:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3738', 'hist-ticket-148-3738', 'cash', 58500, 'completed', '2026-03-27T19:12:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3739', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-27T17:29:15.000Z', '2026-03-27T17:29:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3739-1', 'hist-ticket-148-3739', 'prod-latte', 1, 15000, 0, '2026-03-27T17:29:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3739-2', 'hist-ticket-148-3739', 'prod-mocha', 1, 16500, 0, '2026-03-27T17:29:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3739', 'hist-ticket-148-3739', 'cash', 31500, 'completed', '2026-03-27T17:29:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3740', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-03-27T17:39:43.000Z', '2026-03-27T17:39:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3740-1', 'hist-ticket-148-3740', 'prod-americano', 1, 12000, 0, '2026-03-27T17:39:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3740-2', 'hist-ticket-148-3740', 'prod-mocha', 1, 16500, 0, '2026-03-27T17:39:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3740', 'hist-ticket-148-3740', 'cash', 28500, 'completed', '2026-03-27T17:39:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3741', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-27T19:07:19.000Z', '2026-03-27T19:07:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3741-1', 'hist-ticket-148-3741', 'prod-americano', 1, 12000, 0, '2026-03-27T19:07:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3741-2', 'hist-ticket-148-3741', 'prod-latte', 1, 15000, 0, '2026-03-27T19:07:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3741', 'hist-ticket-148-3741', 'cash', 27000, 'completed', '2026-03-27T19:07:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3742', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-27T11:08:45.000Z', '2026-03-27T11:08:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3742-1', 'hist-ticket-148-3742', 'prod-mocha', 1, 16500, 0, '2026-03-27T11:08:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3742', 'hist-ticket-148-3742', 'cash', 16500, 'completed', '2026-03-27T11:08:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3743', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-03-27T19:47:21.000Z', '2026-03-27T19:47:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3743-1', 'hist-ticket-148-3743', 'prod-americano', 1, 12000, 0, '2026-03-27T19:47:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3743-2', 'hist-ticket-148-3743', 'prod-mocha', 1, 16500, 0, '2026-03-27T19:47:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3743', 'hist-ticket-148-3743', 'cash', 28500, 'completed', '2026-03-27T19:47:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3744', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-27T15:35:34.000Z', '2026-03-27T15:35:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3744-1', 'hist-ticket-148-3744', 'prod-mocha', 1, 16500, 0, '2026-03-27T15:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3744-2', 'hist-ticket-148-3744', 'prod-latte', 1, 15000, 0, '2026-03-27T15:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3744-3', 'hist-ticket-148-3744', 'prod-americano', 1, 12000, 0, '2026-03-27T15:35:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3744', 'hist-ticket-148-3744', 'cash', 43500, 'completed', '2026-03-27T15:35:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3745', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-27T18:10:52.000Z', '2026-03-27T18:10:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3745-1', 'hist-ticket-148-3745', 'prod-latte', 1, 15000, 0, '2026-03-27T18:10:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3745', 'hist-ticket-148-3745', 'cash', 15000, 'completed', '2026-03-27T18:10:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3746', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-27T08:18:09.000Z', '2026-03-27T08:18:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3746-1', 'hist-ticket-148-3746', 'prod-americano', 1, 12000, 0, '2026-03-27T08:18:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3746', 'hist-ticket-148-3746', 'cash', 12000, 'completed', '2026-03-27T08:18:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-148-3747', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-03-27T18:40:01.000Z', '2026-03-27T18:40:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3747-1', 'hist-ticket-148-3747', 'prod-mocha', 1, 16500, 0, '2026-03-27T18:40:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3747-2', 'hist-ticket-148-3747', 'prod-cappuccino', 1, 14500, 0, '2026-03-27T18:40:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3747-3', 'hist-ticket-148-3747', 'prod-latte', 1, 15000, 0, '2026-03-27T18:40:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-148-3747-4', 'hist-ticket-148-3747', 'prod-latte', 1, 15000, 0, '2026-03-27T18:40:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-148-3747', 'hist-ticket-148-3747', 'cash', 61000, 'completed', '2026-03-27T18:40:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3748', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-28T15:39:35.000Z', '2026-03-28T15:39:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3748-1', 'hist-ticket-149-3748', 'prod-mocha', 1, 16500, 0, '2026-03-28T15:39:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3748-2', 'hist-ticket-149-3748', 'prod-latte', 1, 15000, 0, '2026-03-28T15:39:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3748', 'hist-ticket-149-3748', 'cash', 31500, 'completed', '2026-03-28T15:39:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3749', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-28T13:03:38.000Z', '2026-03-28T13:03:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3749-1', 'hist-ticket-149-3749', 'prod-latte', 1, 15000, 0, '2026-03-28T13:03:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3749-2', 'hist-ticket-149-3749', 'prod-americano', 1, 12000, 0, '2026-03-28T13:03:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3749', 'hist-ticket-149-3749', 'cash', 27000, 'completed', '2026-03-28T13:03:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3750', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-28T08:07:31.000Z', '2026-03-28T08:07:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3750-1', 'hist-ticket-149-3750', 'prod-mocha', 1, 16500, 0, '2026-03-28T08:07:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3750-2', 'hist-ticket-149-3750', 'prod-latte', 1, 15000, 0, '2026-03-28T08:07:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3750-3', 'hist-ticket-149-3750', 'prod-mocha', 1, 16500, 0, '2026-03-28T08:07:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3750', 'hist-ticket-149-3750', 'cash', 48000, 'completed', '2026-03-28T08:07:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3751', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-03-28T12:13:51.000Z', '2026-03-28T12:13:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;