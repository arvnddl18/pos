INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3976-4', 'hist-ticket-156-3976', 'prod-mocha', 1, 16500, 0, '2026-04-04T09:16:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3976', 'hist-ticket-156-3976', 'cash', 64000, 'completed', '2026-04-04T09:16:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3977', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-04T16:33:58.000Z', '2026-04-04T16:33:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3977-1', 'hist-ticket-156-3977', 'prod-mocha', 1, 16500, 0, '2026-04-04T16:33:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3977-2', 'hist-ticket-156-3977', 'prod-mocha', 1, 16500, 0, '2026-04-04T16:33:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3977', 'hist-ticket-156-3977', 'cash', 33000, 'completed', '2026-04-04T16:33:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3978', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-04-04T15:10:11.000Z', '2026-04-04T15:10:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3978-1', 'hist-ticket-156-3978', 'prod-mocha', 1, 16500, 0, '2026-04-04T15:10:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3978-2', 'hist-ticket-156-3978', 'prod-mocha', 1, 16500, 0, '2026-04-04T15:10:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3978', 'hist-ticket-156-3978', 'cash', 33000, 'completed', '2026-04-04T15:10:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3979', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-04T18:00:23.000Z', '2026-04-04T18:00:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3979-1', 'hist-ticket-156-3979', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T18:00:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3979', 'hist-ticket-156-3979', 'cash', 14500, 'completed', '2026-04-04T18:00:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3980', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-04T13:26:52.000Z', '2026-04-04T13:26:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3980-1', 'hist-ticket-156-3980', 'prod-mocha', 1, 16500, 0, '2026-04-04T13:26:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3980-2', 'hist-ticket-156-3980', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T13:26:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3980-3', 'hist-ticket-156-3980', 'prod-americano', 1, 12000, 0, '2026-04-04T13:26:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3980-4', 'hist-ticket-156-3980', 'prod-americano', 1, 12000, 0, '2026-04-04T13:26:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3980', 'hist-ticket-156-3980', 'cash', 55000, 'completed', '2026-04-04T13:26:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3981', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-04T16:41:44.000Z', '2026-04-04T16:41:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3981-1', 'hist-ticket-156-3981', 'prod-mocha', 1, 16500, 0, '2026-04-04T16:41:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3981', 'hist-ticket-156-3981', 'cash', 16500, 'completed', '2026-04-04T16:41:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3982', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-04T11:15:17.000Z', '2026-04-04T11:15:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3982-1', 'hist-ticket-156-3982', 'prod-mocha', 1, 16500, 0, '2026-04-04T11:15:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3982-2', 'hist-ticket-156-3982', 'prod-latte', 1, 15000, 0, '2026-04-04T11:15:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3982-3', 'hist-ticket-156-3982', 'prod-mocha', 1, 16500, 0, '2026-04-04T11:15:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3982-4', 'hist-ticket-156-3982', 'prod-latte', 1, 15000, 0, '2026-04-04T11:15:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3982', 'hist-ticket-156-3982', 'cash', 63000, 'completed', '2026-04-04T11:15:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3983', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-04T17:28:02.000Z', '2026-04-04T17:28:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3983-1', 'hist-ticket-156-3983', 'prod-americano', 1, 12000, 0, '2026-04-04T17:28:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3983', 'hist-ticket-156-3983', 'cash', 12000, 'completed', '2026-04-04T17:28:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3984', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-04-04T18:29:30.000Z', '2026-04-04T18:29:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3984-1', 'hist-ticket-156-3984', 'prod-americano', 1, 12000, 0, '2026-04-04T18:29:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3984-2', 'hist-ticket-156-3984', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T18:29:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3984', 'hist-ticket-156-3984', 'cash', 26500, 'completed', '2026-04-04T18:29:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3985', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-04-04T19:49:33.000Z', '2026-04-04T19:49:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3985-1', 'hist-ticket-156-3985', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T19:49:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3985', 'hist-ticket-156-3985', 'cash', 14500, 'completed', '2026-04-04T19:49:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3986', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-04-04T17:58:24.000Z', '2026-04-04T17:58:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3986-1', 'hist-ticket-156-3986', 'prod-latte', 1, 15000, 0, '2026-04-04T17:58:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3986-2', 'hist-ticket-156-3986', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T17:58:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3986', 'hist-ticket-156-3986', 'cash', 29500, 'completed', '2026-04-04T17:58:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3987', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-05T15:55:35.000Z', '2026-04-05T15:55:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3987-1', 'hist-ticket-157-3987', 'prod-mocha', 1, 16500, 0, '2026-04-05T15:55:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3987', 'hist-ticket-157-3987', 'cash', 16500, 'completed', '2026-04-05T15:55:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3988', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-05T11:33:13.000Z', '2026-04-05T11:33:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3988-1', 'hist-ticket-157-3988', 'prod-latte', 1, 15000, 0, '2026-04-05T11:33:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3988-2', 'hist-ticket-157-3988', 'prod-americano', 1, 12000, 0, '2026-04-05T11:33:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3988-3', 'hist-ticket-157-3988', 'prod-latte', 1, 15000, 0, '2026-04-05T11:33:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3988', 'hist-ticket-157-3988', 'cash', 42000, 'completed', '2026-04-05T11:33:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3989', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-05T13:47:00.000Z', '2026-04-05T13:47:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3989-1', 'hist-ticket-157-3989', 'prod-latte', 1, 15000, 0, '2026-04-05T13:47:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3989', 'hist-ticket-157-3989', 'cash', 15000, 'completed', '2026-04-05T13:47:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3990', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-05T17:38:34.000Z', '2026-04-05T17:38:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3990-1', 'hist-ticket-157-3990', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T17:38:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3990-2', 'hist-ticket-157-3990', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T17:38:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3990', 'hist-ticket-157-3990', 'cash', 29000, 'completed', '2026-04-05T17:38:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3991', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-05T13:03:38.000Z', '2026-04-05T13:03:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3991-1', 'hist-ticket-157-3991', 'prod-americano', 1, 12000, 0, '2026-04-05T13:03:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3991', 'hist-ticket-157-3991', 'cash', 12000, 'completed', '2026-04-05T13:03:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3992', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-05T08:07:55.000Z', '2026-04-05T08:07:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3992-1', 'hist-ticket-157-3992', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T08:07:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3992', 'hist-ticket-157-3992', 'cash', 14500, 'completed', '2026-04-05T08:07:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3993', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-05T16:45:10.000Z', '2026-04-05T16:45:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3993-1', 'hist-ticket-157-3993', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T16:45:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3993-2', 'hist-ticket-157-3993', 'prod-americano', 1, 12000, 0, '2026-04-05T16:45:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3993', 'hist-ticket-157-3993', 'cash', 26500, 'completed', '2026-04-05T16:45:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3994', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-05T08:51:14.000Z', '2026-04-05T08:51:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3994-1', 'hist-ticket-157-3994', 'prod-latte', 1, 15000, 0, '2026-04-05T08:51:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3994', 'hist-ticket-157-3994', 'cash', 15000, 'completed', '2026-04-05T08:51:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3995', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-05T13:27:50.000Z', '2026-04-05T13:27:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3995-1', 'hist-ticket-157-3995', 'prod-americano', 1, 12000, 0, '2026-04-05T13:27:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3995-2', 'hist-ticket-157-3995', 'prod-americano', 1, 12000, 0, '2026-04-05T13:27:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3995-3', 'hist-ticket-157-3995', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T13:27:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3995', 'hist-ticket-157-3995', 'cash', 38500, 'completed', '2026-04-05T13:27:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3996', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-05T11:04:55.000Z', '2026-04-05T11:04:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3996-1', 'hist-ticket-157-3996', 'prod-americano', 1, 12000, 0, '2026-04-05T11:04:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3996', 'hist-ticket-157-3996', 'cash', 12000, 'completed', '2026-04-05T11:04:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3997', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-05T14:05:27.000Z', '2026-04-05T14:05:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3997-1', 'hist-ticket-157-3997', 'prod-mocha', 1, 16500, 0, '2026-04-05T14:05:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3997-2', 'hist-ticket-157-3997', 'prod-mocha', 1, 16500, 0, '2026-04-05T14:05:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3997-3', 'hist-ticket-157-3997', 'prod-mocha', 1, 16500, 0, '2026-04-05T14:05:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3997-4', 'hist-ticket-157-3997', 'prod-latte', 1, 15000, 0, '2026-04-05T14:05:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3997', 'hist-ticket-157-3997', 'cash', 64500, 'completed', '2026-04-05T14:05:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3998', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-04-05T16:02:19.000Z', '2026-04-05T16:02:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3998-1', 'hist-ticket-157-3998', 'prod-mocha', 1, 16500, 0, '2026-04-05T16:02:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3998-2', 'hist-ticket-157-3998', 'prod-mocha', 1, 16500, 0, '2026-04-05T16:02:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3998', 'hist-ticket-157-3998', 'cash', 33000, 'completed', '2026-04-05T16:02:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-3999', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-05T11:11:48.000Z', '2026-04-05T11:11:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-3999-1', 'hist-ticket-157-3999', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T11:11:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-3999', 'hist-ticket-157-3999', 'cash', 14500, 'completed', '2026-04-05T11:11:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4000', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-05T09:47:52.000Z', '2026-04-05T09:47:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4000-1', 'hist-ticket-157-4000', 'prod-mocha', 1, 16500, 0, '2026-04-05T09:47:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4000-2', 'hist-ticket-157-4000', 'prod-americano', 1, 12000, 0, '2026-04-05T09:47:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4000-3', 'hist-ticket-157-4000', 'prod-americano', 1, 12000, 0, '2026-04-05T09:47:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4000-4', 'hist-ticket-157-4000', 'prod-latte', 1, 15000, 0, '2026-04-05T09:47:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4000', 'hist-ticket-157-4000', 'cash', 55500, 'completed', '2026-04-05T09:47:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4001', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-04-05T15:50:16.000Z', '2026-04-05T15:50:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4001-1', 'hist-ticket-157-4001', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T15:50:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4001-2', 'hist-ticket-157-4001', 'prod-mocha', 1, 16500, 0, '2026-04-05T15:50:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4001-3', 'hist-ticket-157-4001', 'prod-latte', 1, 15000, 0, '2026-04-05T15:50:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4001', 'hist-ticket-157-4001', 'cash', 46000, 'completed', '2026-04-05T15:50:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4002', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-05T08:34:56.000Z', '2026-04-05T08:34:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4002-1', 'hist-ticket-157-4002', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T08:34:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4002-2', 'hist-ticket-157-4002', 'prod-mocha', 1, 16500, 0, '2026-04-05T08:34:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4002', 'hist-ticket-157-4002', 'cash', 31000, 'completed', '2026-04-05T08:34:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4003', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-05T12:43:05.000Z', '2026-04-05T12:43:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4003-1', 'hist-ticket-157-4003', 'prod-americano', 1, 12000, 0, '2026-04-05T12:43:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4003', 'hist-ticket-157-4003', 'cash', 12000, 'completed', '2026-04-05T12:43:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4004', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-05T12:11:04.000Z', '2026-04-05T12:11:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4004-1', 'hist-ticket-157-4004', 'prod-mocha', 1, 16500, 0, '2026-04-05T12:11:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4004', 'hist-ticket-157-4004', 'cash', 16500, 'completed', '2026-04-05T12:11:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4005', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-05T10:40:31.000Z', '2026-04-05T10:40:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4005-1', 'hist-ticket-157-4005', 'prod-latte', 1, 15000, 0, '2026-04-05T10:40:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4005-2', 'hist-ticket-157-4005', 'prod-americano', 1, 12000, 0, '2026-04-05T10:40:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4005-3', 'hist-ticket-157-4005', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T10:40:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4005-4', 'hist-ticket-157-4005', 'prod-americano', 1, 12000, 0, '2026-04-05T10:40:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4005', 'hist-ticket-157-4005', 'cash', 53500, 'completed', '2026-04-05T10:40:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4006', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-04-05T11:47:27.000Z', '2026-04-05T11:47:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4006-1', 'hist-ticket-157-4006', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T11:47:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4006-2', 'hist-ticket-157-4006', 'prod-latte', 1, 15000, 0, '2026-04-05T11:47:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4006-3', 'hist-ticket-157-4006', 'prod-latte', 1, 15000, 0, '2026-04-05T11:47:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4006', 'hist-ticket-157-4006', 'cash', 44500, 'completed', '2026-04-05T11:47:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4007', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-05T10:19:38.000Z', '2026-04-05T10:19:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4007-1', 'hist-ticket-157-4007', 'prod-mocha', 1, 16500, 0, '2026-04-05T10:19:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4007-2', 'hist-ticket-157-4007', 'prod-americano', 1, 12000, 0, '2026-04-05T10:19:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4007-3', 'hist-ticket-157-4007', 'prod-mocha', 1, 16500, 0, '2026-04-05T10:19:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4007-4', 'hist-ticket-157-4007', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T10:19:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4007', 'hist-ticket-157-4007', 'cash', 59500, 'completed', '2026-04-05T10:19:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4008', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-05T16:58:38.000Z', '2026-04-05T16:58:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4008-1', 'hist-ticket-157-4008', 'prod-americano', 1, 12000, 0, '2026-04-05T16:58:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4008-2', 'hist-ticket-157-4008', 'prod-mocha', 1, 16500, 0, '2026-04-05T16:58:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4008-3', 'hist-ticket-157-4008', 'prod-americano', 1, 12000, 0, '2026-04-05T16:58:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4008', 'hist-ticket-157-4008', 'cash', 40500, 'completed', '2026-04-05T16:58:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4009', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-05T10:41:50.000Z', '2026-04-05T10:41:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4009-1', 'hist-ticket-157-4009', 'prod-mocha', 1, 16500, 0, '2026-04-05T10:41:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4009', 'hist-ticket-157-4009', 'cash', 16500, 'completed', '2026-04-05T10:41:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4010', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-05T19:07:19.000Z', '2026-04-05T19:07:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4010-1', 'hist-ticket-157-4010', 'prod-latte', 1, 15000, 0, '2026-04-05T19:07:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4010-2', 'hist-ticket-157-4010', 'prod-latte', 1, 15000, 0, '2026-04-05T19:07:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4010-3', 'hist-ticket-157-4010', 'prod-mocha', 1, 16500, 0, '2026-04-05T19:07:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4010-4', 'hist-ticket-157-4010', 'prod-mocha', 1, 16500, 0, '2026-04-05T19:07:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4010', 'hist-ticket-157-4010', 'cash', 63000, 'completed', '2026-04-05T19:07:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4011', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-04-05T16:57:29.000Z', '2026-04-05T16:57:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4011-1', 'hist-ticket-157-4011', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T16:57:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4011-2', 'hist-ticket-157-4011', 'prod-mocha', 1, 16500, 0, '2026-04-05T16:57:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4011', 'hist-ticket-157-4011', 'cash', 31000, 'completed', '2026-04-05T16:57:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4012', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-04-05T18:35:41.000Z', '2026-04-05T18:35:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4012-1', 'hist-ticket-157-4012', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T18:35:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4012-2', 'hist-ticket-157-4012', 'prod-americano', 1, 12000, 0, '2026-04-05T18:35:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4012-3', 'hist-ticket-157-4012', 'prod-latte', 1, 15000, 0, '2026-04-05T18:35:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4012', 'hist-ticket-157-4012', 'cash', 41500, 'completed', '2026-04-05T18:35:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4013', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-05T11:56:12.000Z', '2026-04-05T11:56:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4013-1', 'hist-ticket-157-4013', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T11:56:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4013-2', 'hist-ticket-157-4013', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T11:56:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4013-3', 'hist-ticket-157-4013', 'prod-mocha', 1, 16500, 0, '2026-04-05T11:56:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4013', 'hist-ticket-157-4013', 'cash', 45500, 'completed', '2026-04-05T11:56:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4014', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-05T17:41:02.000Z', '2026-04-05T17:41:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4014-1', 'hist-ticket-157-4014', 'prod-mocha', 1, 16500, 0, '2026-04-05T17:41:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4014-2', 'hist-ticket-157-4014', 'prod-latte', 1, 15000, 0, '2026-04-05T17:41:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4014', 'hist-ticket-157-4014', 'cash', 31500, 'completed', '2026-04-05T17:41:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4015', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-05T11:19:10.000Z', '2026-04-05T11:19:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4015-1', 'hist-ticket-157-4015', 'prod-latte', 1, 15000, 0, '2026-04-05T11:19:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4015-2', 'hist-ticket-157-4015', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T11:19:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4015', 'hist-ticket-157-4015', 'cash', 29500, 'completed', '2026-04-05T11:19:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4016', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-04-05T10:55:03.000Z', '2026-04-05T10:55:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4016-1', 'hist-ticket-157-4016', 'prod-mocha', 1, 16500, 0, '2026-04-05T10:55:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4016-2', 'hist-ticket-157-4016', 'prod-latte', 1, 15000, 0, '2026-04-05T10:55:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4016', 'hist-ticket-157-4016', 'cash', 31500, 'completed', '2026-04-05T10:55:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4017', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-04-05T09:13:29.000Z', '2026-04-05T09:13:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4017-1', 'hist-ticket-157-4017', 'prod-mocha', 1, 16500, 0, '2026-04-05T09:13:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4017-2', 'hist-ticket-157-4017', 'prod-americano', 1, 12000, 0, '2026-04-05T09:13:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4017-3', 'hist-ticket-157-4017', 'prod-latte', 1, 15000, 0, '2026-04-05T09:13:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4017-4', 'hist-ticket-157-4017', 'prod-latte', 1, 15000, 0, '2026-04-05T09:13:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4017', 'hist-ticket-157-4017', 'cash', 58500, 'completed', '2026-04-05T09:13:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4018', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-05T16:18:53.000Z', '2026-04-05T16:18:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4018-1', 'hist-ticket-157-4018', 'prod-americano', 1, 12000, 0, '2026-04-05T16:18:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4018-2', 'hist-ticket-157-4018', 'prod-mocha', 1, 16500, 0, '2026-04-05T16:18:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4018-3', 'hist-ticket-157-4018', 'prod-mocha', 1, 16500, 0, '2026-04-05T16:18:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4018', 'hist-ticket-157-4018', 'cash', 45000, 'completed', '2026-04-05T16:18:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4019', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-05T10:42:38.000Z', '2026-04-05T10:42:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4019-1', 'hist-ticket-157-4019', 'prod-mocha', 1, 16500, 0, '2026-04-05T10:42:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4019', 'hist-ticket-157-4019', 'cash', 16500, 'completed', '2026-04-05T10:42:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4020', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-04-05T17:17:12.000Z', '2026-04-05T17:17:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4020-1', 'hist-ticket-157-4020', 'prod-latte', 1, 15000, 0, '2026-04-05T17:17:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4020-2', 'hist-ticket-157-4020', 'prod-latte', 1, 15000, 0, '2026-04-05T17:17:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4020-3', 'hist-ticket-157-4020', 'prod-americano', 1, 12000, 0, '2026-04-05T17:17:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4020-4', 'hist-ticket-157-4020', 'prod-latte', 1, 15000, 0, '2026-04-05T17:17:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4020', 'hist-ticket-157-4020', 'cash', 57000, 'completed', '2026-04-05T17:17:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-157-4021', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-05T08:41:00.000Z', '2026-04-05T08:41:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4021-1', 'hist-ticket-157-4021', 'prod-mocha', 1, 16500, 0, '2026-04-05T08:41:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-157-4021-2', 'hist-ticket-157-4021', 'prod-latte', 1, 15000, 0, '2026-04-05T08:41:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-157-4021', 'hist-ticket-157-4021', 'cash', 31500, 'completed', '2026-04-05T08:41:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4022', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-06T17:03:00.000Z', '2026-04-06T17:03:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4022-1', 'hist-ticket-158-4022', 'prod-latte', 1, 15000, 0, '2026-04-06T17:03:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4022-2', 'hist-ticket-158-4022', 'prod-mocha', 1, 16500, 0, '2026-04-06T17:03:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4022', 'hist-ticket-158-4022', 'cash', 31500, 'completed', '2026-04-06T17:03:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4023', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-06T17:48:17.000Z', '2026-04-06T17:48:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4023-1', 'hist-ticket-158-4023', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T17:48:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4023-2', 'hist-ticket-158-4023', 'prod-mocha', 1, 16500, 0, '2026-04-06T17:48:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4023-3', 'hist-ticket-158-4023', 'prod-latte', 1, 15000, 0, '2026-04-06T17:48:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4023', 'hist-ticket-158-4023', 'cash', 46000, 'completed', '2026-04-06T17:48:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4024', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-06T17:02:34.000Z', '2026-04-06T17:02:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4024-1', 'hist-ticket-158-4024', 'prod-americano', 1, 12000, 0, '2026-04-06T17:02:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4024-2', 'hist-ticket-158-4024', 'prod-latte', 1, 15000, 0, '2026-04-06T17:02:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4024', 'hist-ticket-158-4024', 'cash', 27000, 'completed', '2026-04-06T17:02:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4025', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-06T08:54:11.000Z', '2026-04-06T08:54:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4025-1', 'hist-ticket-158-4025', 'prod-mocha', 1, 16500, 0, '2026-04-06T08:54:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4025-2', 'hist-ticket-158-4025', 'prod-americano', 1, 12000, 0, '2026-04-06T08:54:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4025-3', 'hist-ticket-158-4025', 'prod-mocha', 1, 16500, 0, '2026-04-06T08:54:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4025', 'hist-ticket-158-4025', 'cash', 45000, 'completed', '2026-04-06T08:54:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4026', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-06T13:10:26.000Z', '2026-04-06T13:10:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4026-1', 'hist-ticket-158-4026', 'prod-latte', 1, 15000, 0, '2026-04-06T13:10:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4026', 'hist-ticket-158-4026', 'cash', 15000, 'completed', '2026-04-06T13:10:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4027', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-06T17:01:48.000Z', '2026-04-06T17:01:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4027-1', 'hist-ticket-158-4027', 'prod-americano', 1, 12000, 0, '2026-04-06T17:01:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4027-2', 'hist-ticket-158-4027', 'prod-latte', 1, 15000, 0, '2026-04-06T17:01:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4027', 'hist-ticket-158-4027', 'cash', 27000, 'completed', '2026-04-06T17:01:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4028', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-06T09:46:54.000Z', '2026-04-06T09:46:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4028-1', 'hist-ticket-158-4028', 'prod-americano', 1, 12000, 0, '2026-04-06T09:46:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4028-2', 'hist-ticket-158-4028', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T09:46:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4028', 'hist-ticket-158-4028', 'cash', 26500, 'completed', '2026-04-06T09:46:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4029', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-06T16:22:20.000Z', '2026-04-06T16:22:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4029-1', 'hist-ticket-158-4029', 'prod-latte', 1, 15000, 0, '2026-04-06T16:22:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4029-2', 'hist-ticket-158-4029', 'prod-americano', 1, 12000, 0, '2026-04-06T16:22:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4029', 'hist-ticket-158-4029', 'cash', 27000, 'completed', '2026-04-06T16:22:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4030', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-06T12:10:41.000Z', '2026-04-06T12:10:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4030-1', 'hist-ticket-158-4030', 'prod-americano', 1, 12000, 0, '2026-04-06T12:10:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4030-2', 'hist-ticket-158-4030', 'prod-mocha', 1, 16500, 0, '2026-04-06T12:10:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4030-3', 'hist-ticket-158-4030', 'prod-latte', 1, 15000, 0, '2026-04-06T12:10:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4030-4', 'hist-ticket-158-4030', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T12:10:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4030', 'hist-ticket-158-4030', 'cash', 58000, 'completed', '2026-04-06T12:10:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4031', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-06T11:24:13.000Z', '2026-04-06T11:24:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4031-1', 'hist-ticket-158-4031', 'prod-mocha', 1, 16500, 0, '2026-04-06T11:24:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4031-2', 'hist-ticket-158-4031', 'prod-mocha', 1, 16500, 0, '2026-04-06T11:24:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4031-3', 'hist-ticket-158-4031', 'prod-mocha', 1, 16500, 0, '2026-04-06T11:24:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4031', 'hist-ticket-158-4031', 'cash', 49500, 'completed', '2026-04-06T11:24:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4032', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-04-06T12:10:32.000Z', '2026-04-06T12:10:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4032-1', 'hist-ticket-158-4032', 'prod-latte', 1, 15000, 0, '2026-04-06T12:10:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4032', 'hist-ticket-158-4032', 'cash', 15000, 'completed', '2026-04-06T12:10:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4033', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-06T19:25:49.000Z', '2026-04-06T19:25:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4033-1', 'hist-ticket-158-4033', 'prod-mocha', 1, 16500, 0, '2026-04-06T19:25:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4033-2', 'hist-ticket-158-4033', 'prod-americano', 1, 12000, 0, '2026-04-06T19:25:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4033-3', 'hist-ticket-158-4033', 'prod-latte', 1, 15000, 0, '2026-04-06T19:25:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4033', 'hist-ticket-158-4033', 'cash', 43500, 'completed', '2026-04-06T19:25:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4034', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-04-06T13:11:58.000Z', '2026-04-06T13:11:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4034-1', 'hist-ticket-158-4034', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T13:11:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4034', 'hist-ticket-158-4034', 'cash', 14500, 'completed', '2026-04-06T13:11:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4035', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-04-06T12:59:42.000Z', '2026-04-06T12:59:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4035-1', 'hist-ticket-158-4035', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T12:59:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4035', 'hist-ticket-158-4035', 'cash', 14500, 'completed', '2026-04-06T12:59:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4036', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-04-06T10:03:15.000Z', '2026-04-06T10:03:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4036-1', 'hist-ticket-158-4036', 'prod-latte', 1, 15000, 0, '2026-04-06T10:03:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4036', 'hist-ticket-158-4036', 'cash', 15000, 'completed', '2026-04-06T10:03:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4037', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-04-06T15:36:38.000Z', '2026-04-06T15:36:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4037-1', 'hist-ticket-158-4037', 'prod-americano', 1, 12000, 0, '2026-04-06T15:36:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4037', 'hist-ticket-158-4037', 'cash', 12000, 'completed', '2026-04-06T15:36:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4038', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-06T08:14:48.000Z', '2026-04-06T08:14:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4038-1', 'hist-ticket-158-4038', 'prod-americano', 1, 12000, 0, '2026-04-06T08:14:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4038', 'hist-ticket-158-4038', 'cash', 12000, 'completed', '2026-04-06T08:14:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4039', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-04-06T15:10:12.000Z', '2026-04-06T15:10:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4039-1', 'hist-ticket-158-4039', 'prod-americano', 1, 12000, 0, '2026-04-06T15:10:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4039-2', 'hist-ticket-158-4039', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T15:10:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4039-3', 'hist-ticket-158-4039', 'prod-mocha', 1, 16500, 0, '2026-04-06T15:10:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4039', 'hist-ticket-158-4039', 'cash', 43000, 'completed', '2026-04-06T15:10:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4040', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-06T14:11:03.000Z', '2026-04-06T14:11:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4040-1', 'hist-ticket-158-4040', 'prod-latte', 1, 15000, 0, '2026-04-06T14:11:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4040', 'hist-ticket-158-4040', 'cash', 15000, 'completed', '2026-04-06T14:11:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4041', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-06T17:22:36.000Z', '2026-04-06T17:22:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4041-1', 'hist-ticket-158-4041', 'prod-americano', 1, 12000, 0, '2026-04-06T17:22:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4041-2', 'hist-ticket-158-4041', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T17:22:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4041-3', 'hist-ticket-158-4041', 'prod-mocha', 1, 16500, 0, '2026-04-06T17:22:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4041-4', 'hist-ticket-158-4041', 'prod-mocha', 1, 16500, 0, '2026-04-06T17:22:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4041', 'hist-ticket-158-4041', 'cash', 59500, 'completed', '2026-04-06T17:22:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4042', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-06T15:30:39.000Z', '2026-04-06T15:30:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4042-1', 'hist-ticket-158-4042', 'prod-americano', 1, 12000, 0, '2026-04-06T15:30:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4042-2', 'hist-ticket-158-4042', 'prod-latte', 1, 15000, 0, '2026-04-06T15:30:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4042', 'hist-ticket-158-4042', 'cash', 27000, 'completed', '2026-04-06T15:30:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4043', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-06T10:01:34.000Z', '2026-04-06T10:01:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4043-1', 'hist-ticket-158-4043', 'prod-americano', 1, 12000, 0, '2026-04-06T10:01:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4043-2', 'hist-ticket-158-4043', 'prod-latte', 1, 15000, 0, '2026-04-06T10:01:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4043', 'hist-ticket-158-4043', 'cash', 27000, 'completed', '2026-04-06T10:01:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4044', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-06T09:42:24.000Z', '2026-04-06T09:42:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4044-1', 'hist-ticket-158-4044', 'prod-latte', 1, 15000, 0, '2026-04-06T09:42:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4044-2', 'hist-ticket-158-4044', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T09:42:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4044-3', 'hist-ticket-158-4044', 'prod-americano', 1, 12000, 0, '2026-04-06T09:42:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4044', 'hist-ticket-158-4044', 'cash', 41500, 'completed', '2026-04-06T09:42:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4045', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-06T16:50:37.000Z', '2026-04-06T16:50:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4045-1', 'hist-ticket-158-4045', 'prod-mocha', 1, 16500, 0, '2026-04-06T16:50:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4045-2', 'hist-ticket-158-4045', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T16:50:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4045', 'hist-ticket-158-4045', 'cash', 31000, 'completed', '2026-04-06T16:50:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4046', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-06T11:29:38.000Z', '2026-04-06T11:29:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4046-1', 'hist-ticket-158-4046', 'prod-mocha', 1, 16500, 0, '2026-04-06T11:29:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4046-2', 'hist-ticket-158-4046', 'prod-americano', 1, 12000, 0, '2026-04-06T11:29:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4046-3', 'hist-ticket-158-4046', 'prod-americano', 1, 12000, 0, '2026-04-06T11:29:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4046-4', 'hist-ticket-158-4046', 'prod-americano', 1, 12000, 0, '2026-04-06T11:29:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4046', 'hist-ticket-158-4046', 'cash', 52500, 'completed', '2026-04-06T11:29:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4047', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-06T15:34:01.000Z', '2026-04-06T15:34:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4047-1', 'hist-ticket-158-4047', 'prod-mocha', 1, 16500, 0, '2026-04-06T15:34:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4047', 'hist-ticket-158-4047', 'cash', 16500, 'completed', '2026-04-06T15:34:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4048', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-06T10:07:37.000Z', '2026-04-06T10:07:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4048-1', 'hist-ticket-158-4048', 'prod-latte', 1, 15000, 0, '2026-04-06T10:07:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4048-2', 'hist-ticket-158-4048', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T10:07:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4048-3', 'hist-ticket-158-4048', 'prod-americano', 1, 12000, 0, '2026-04-06T10:07:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4048', 'hist-ticket-158-4048', 'cash', 41500, 'completed', '2026-04-06T10:07:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-158-4049', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-06T13:55:35.000Z', '2026-04-06T13:55:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4049-1', 'hist-ticket-158-4049', 'prod-latte', 1, 15000, 0, '2026-04-06T13:55:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-158-4049-2', 'hist-ticket-158-4049', 'prod-mocha', 1, 16500, 0, '2026-04-06T13:55:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-158-4049', 'hist-ticket-158-4049', 'cash', 31500, 'completed', '2026-04-06T13:55:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4050', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-07T19:37:21.000Z', '2026-04-07T19:37:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4050-1', 'hist-ticket-159-4050', 'prod-americano', 1, 12000, 0, '2026-04-07T19:37:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4050', 'hist-ticket-159-4050', 'cash', 12000, 'completed', '2026-04-07T19:37:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4051', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-04-07T08:20:40.000Z', '2026-04-07T08:20:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4051-1', 'hist-ticket-159-4051', 'prod-mocha', 1, 16500, 0, '2026-04-07T08:20:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4051', 'hist-ticket-159-4051', 'cash', 16500, 'completed', '2026-04-07T08:20:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4052', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-07T10:28:50.000Z', '2026-04-07T10:28:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4052-1', 'hist-ticket-159-4052', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T10:28:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4052-2', 'hist-ticket-159-4052', 'prod-latte', 1, 15000, 0, '2026-04-07T10:28:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4052-3', 'hist-ticket-159-4052', 'prod-americano', 1, 12000, 0, '2026-04-07T10:28:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4052', 'hist-ticket-159-4052', 'cash', 41500, 'completed', '2026-04-07T10:28:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4053', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-07T16:05:37.000Z', '2026-04-07T16:05:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4053-1', 'hist-ticket-159-4053', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T16:05:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4053-2', 'hist-ticket-159-4053', 'prod-mocha', 1, 16500, 0, '2026-04-07T16:05:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4053', 'hist-ticket-159-4053', 'cash', 31000, 'completed', '2026-04-07T16:05:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4054', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-07T19:15:13.000Z', '2026-04-07T19:15:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4054-1', 'hist-ticket-159-4054', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T19:15:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4054-2', 'hist-ticket-159-4054', 'prod-latte', 1, 15000, 0, '2026-04-07T19:15:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4054-3', 'hist-ticket-159-4054', 'prod-americano', 1, 12000, 0, '2026-04-07T19:15:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4054', 'hist-ticket-159-4054', 'cash', 41500, 'completed', '2026-04-07T19:15:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4055', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-07T13:38:10.000Z', '2026-04-07T13:38:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4055-1', 'hist-ticket-159-4055', 'prod-americano', 1, 12000, 0, '2026-04-07T13:38:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4055-2', 'hist-ticket-159-4055', 'prod-mocha', 1, 16500, 0, '2026-04-07T13:38:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4055-3', 'hist-ticket-159-4055', 'prod-americano', 1, 12000, 0, '2026-04-07T13:38:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4055', 'hist-ticket-159-4055', 'cash', 40500, 'completed', '2026-04-07T13:38:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4056', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-07T08:25:45.000Z', '2026-04-07T08:25:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4056-1', 'hist-ticket-159-4056', 'prod-latte', 1, 15000, 0, '2026-04-07T08:25:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4056-2', 'hist-ticket-159-4056', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T08:25:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4056-3', 'hist-ticket-159-4056', 'prod-americano', 1, 12000, 0, '2026-04-07T08:25:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4056-4', 'hist-ticket-159-4056', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T08:25:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4056', 'hist-ticket-159-4056', 'cash', 56000, 'completed', '2026-04-07T08:25:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4057', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-04-07T10:08:51.000Z', '2026-04-07T10:08:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4057-1', 'hist-ticket-159-4057', 'prod-latte', 1, 15000, 0, '2026-04-07T10:08:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4057-2', 'hist-ticket-159-4057', 'prod-mocha', 1, 16500, 0, '2026-04-07T10:08:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4057-3', 'hist-ticket-159-4057', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T10:08:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4057-4', 'hist-ticket-159-4057', 'prod-americano', 1, 12000, 0, '2026-04-07T10:08:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4057', 'hist-ticket-159-4057', 'cash', 58000, 'completed', '2026-04-07T10:08:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4058', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-07T19:51:39.000Z', '2026-04-07T19:51:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4058-1', 'hist-ticket-159-4058', 'prod-latte', 1, 15000, 0, '2026-04-07T19:51:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4058-2', 'hist-ticket-159-4058', 'prod-americano', 1, 12000, 0, '2026-04-07T19:51:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4058-3', 'hist-ticket-159-4058', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T19:51:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4058', 'hist-ticket-159-4058', 'cash', 41500, 'completed', '2026-04-07T19:51:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4059', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-07T18:08:01.000Z', '2026-04-07T18:08:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4059-1', 'hist-ticket-159-4059', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T18:08:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4059-2', 'hist-ticket-159-4059', 'prod-latte', 1, 15000, 0, '2026-04-07T18:08:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4059-3', 'hist-ticket-159-4059', 'prod-mocha', 1, 16500, 0, '2026-04-07T18:08:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4059', 'hist-ticket-159-4059', 'cash', 46000, 'completed', '2026-04-07T18:08:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4060', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-07T17:53:15.000Z', '2026-04-07T17:53:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4060-1', 'hist-ticket-159-4060', 'prod-mocha', 1, 16500, 0, '2026-04-07T17:53:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4060', 'hist-ticket-159-4060', 'cash', 16500, 'completed', '2026-04-07T17:53:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4061', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-07T11:33:04.000Z', '2026-04-07T11:33:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4061-1', 'hist-ticket-159-4061', 'prod-latte', 1, 15000, 0, '2026-04-07T11:33:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4061-2', 'hist-ticket-159-4061', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T11:33:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4061-3', 'hist-ticket-159-4061', 'prod-latte', 1, 15000, 0, '2026-04-07T11:33:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4061-4', 'hist-ticket-159-4061', 'prod-americano', 1, 12000, 0, '2026-04-07T11:33:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4061', 'hist-ticket-159-4061', 'cash', 56500, 'completed', '2026-04-07T11:33:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4062', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-07T11:40:29.000Z', '2026-04-07T11:40:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4062-1', 'hist-ticket-159-4062', 'prod-americano', 1, 12000, 0, '2026-04-07T11:40:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4062', 'hist-ticket-159-4062', 'cash', 12000, 'completed', '2026-04-07T11:40:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4063', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-07T16:07:32.000Z', '2026-04-07T16:07:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4063-1', 'hist-ticket-159-4063', 'prod-latte', 1, 15000, 0, '2026-04-07T16:07:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4063-2', 'hist-ticket-159-4063', 'prod-latte', 1, 15000, 0, '2026-04-07T16:07:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4063-3', 'hist-ticket-159-4063', 'prod-latte', 1, 15000, 0, '2026-04-07T16:07:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4063-4', 'hist-ticket-159-4063', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T16:07:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4063', 'hist-ticket-159-4063', 'cash', 59500, 'completed', '2026-04-07T16:07:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4064', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-07T16:09:12.000Z', '2026-04-07T16:09:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4064-1', 'hist-ticket-159-4064', 'prod-latte', 1, 15000, 0, '2026-04-07T16:09:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4064-2', 'hist-ticket-159-4064', 'prod-latte', 1, 15000, 0, '2026-04-07T16:09:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4064-3', 'hist-ticket-159-4064', 'prod-americano', 1, 12000, 0, '2026-04-07T16:09:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4064-4', 'hist-ticket-159-4064', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T16:09:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4064', 'hist-ticket-159-4064', 'cash', 56500, 'completed', '2026-04-07T16:09:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4065', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-07T17:01:11.000Z', '2026-04-07T17:01:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4065-1', 'hist-ticket-159-4065', 'prod-latte', 1, 15000, 0, '2026-04-07T17:01:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4065-2', 'hist-ticket-159-4065', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T17:01:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4065-3', 'hist-ticket-159-4065', 'prod-mocha', 1, 16500, 0, '2026-04-07T17:01:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4065-4', 'hist-ticket-159-4065', 'prod-latte', 1, 15000, 0, '2026-04-07T17:01:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4065', 'hist-ticket-159-4065', 'cash', 61000, 'completed', '2026-04-07T17:01:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4066', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-07T17:37:41.000Z', '2026-04-07T17:37:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4066-1', 'hist-ticket-159-4066', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T17:37:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4066-2', 'hist-ticket-159-4066', 'prod-americano', 1, 12000, 0, '2026-04-07T17:37:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4066-3', 'hist-ticket-159-4066', 'prod-americano', 1, 12000, 0, '2026-04-07T17:37:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4066', 'hist-ticket-159-4066', 'cash', 38500, 'completed', '2026-04-07T17:37:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4067', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-07T13:18:31.000Z', '2026-04-07T13:18:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4067-1', 'hist-ticket-159-4067', 'prod-americano', 1, 12000, 0, '2026-04-07T13:18:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4067', 'hist-ticket-159-4067', 'cash', 12000, 'completed', '2026-04-07T13:18:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4068', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-07T13:25:09.000Z', '2026-04-07T13:25:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4068-1', 'hist-ticket-159-4068', 'prod-mocha', 1, 16500, 0, '2026-04-07T13:25:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4068-2', 'hist-ticket-159-4068', 'prod-latte', 1, 15000, 0, '2026-04-07T13:25:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4068', 'hist-ticket-159-4068', 'cash', 31500, 'completed', '2026-04-07T13:25:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4069', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-07T16:48:38.000Z', '2026-04-07T16:48:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4069-1', 'hist-ticket-159-4069', 'prod-latte', 1, 15000, 0, '2026-04-07T16:48:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4069-2', 'hist-ticket-159-4069', 'prod-americano', 1, 12000, 0, '2026-04-07T16:48:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4069-3', 'hist-ticket-159-4069', 'prod-latte', 1, 15000, 0, '2026-04-07T16:48:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4069', 'hist-ticket-159-4069', 'cash', 42000, 'completed', '2026-04-07T16:48:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4070', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-04-07T16:53:56.000Z', '2026-04-07T16:53:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4070-1', 'hist-ticket-159-4070', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T16:53:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4070-2', 'hist-ticket-159-4070', 'prod-americano', 1, 12000, 0, '2026-04-07T16:53:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4070-3', 'hist-ticket-159-4070', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T16:53:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4070', 'hist-ticket-159-4070', 'cash', 41000, 'completed', '2026-04-07T16:53:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4071', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-07T19:32:05.000Z', '2026-04-07T19:32:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4071-1', 'hist-ticket-159-4071', 'prod-latte', 1, 15000, 0, '2026-04-07T19:32:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4071-2', 'hist-ticket-159-4071', 'prod-mocha', 1, 16500, 0, '2026-04-07T19:32:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4071-3', 'hist-ticket-159-4071', 'prod-americano', 1, 12000, 0, '2026-04-07T19:32:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4071', 'hist-ticket-159-4071', 'cash', 43500, 'completed', '2026-04-07T19:32:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4072', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-07T18:08:24.000Z', '2026-04-07T18:08:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4072-1', 'hist-ticket-159-4072', 'prod-latte', 1, 15000, 0, '2026-04-07T18:08:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4072-2', 'hist-ticket-159-4072', 'prod-americano', 1, 12000, 0, '2026-04-07T18:08:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4072-3', 'hist-ticket-159-4072', 'prod-mocha', 1, 16500, 0, '2026-04-07T18:08:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4072', 'hist-ticket-159-4072', 'cash', 43500, 'completed', '2026-04-07T18:08:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4073', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-07T19:45:30.000Z', '2026-04-07T19:45:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4073-1', 'hist-ticket-159-4073', 'prod-mocha', 1, 16500, 0, '2026-04-07T19:45:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4073-2', 'hist-ticket-159-4073', 'prod-americano', 1, 12000, 0, '2026-04-07T19:45:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4073-3', 'hist-ticket-159-4073', 'prod-mocha', 1, 16500, 0, '2026-04-07T19:45:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4073-4', 'hist-ticket-159-4073', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T19:45:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4073', 'hist-ticket-159-4073', 'cash', 59500, 'completed', '2026-04-07T19:45:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4074', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-07T16:40:27.000Z', '2026-04-07T16:40:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4074-1', 'hist-ticket-159-4074', 'prod-mocha', 1, 16500, 0, '2026-04-07T16:40:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4074', 'hist-ticket-159-4074', 'cash', 16500, 'completed', '2026-04-07T16:40:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4075', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-07T18:27:32.000Z', '2026-04-07T18:27:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4075-1', 'hist-ticket-159-4075', 'prod-latte', 1, 15000, 0, '2026-04-07T18:27:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4075-2', 'hist-ticket-159-4075', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T18:27:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4075-3', 'hist-ticket-159-4075', 'prod-latte', 1, 15000, 0, '2026-04-07T18:27:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4075-4', 'hist-ticket-159-4075', 'prod-mocha', 1, 16500, 0, '2026-04-07T18:27:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4075', 'hist-ticket-159-4075', 'cash', 61000, 'completed', '2026-04-07T18:27:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-159-4076', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-04-07T16:15:23.000Z', '2026-04-07T16:15:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4076-1', 'hist-ticket-159-4076', 'prod-mocha', 1, 16500, 0, '2026-04-07T16:15:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4076-2', 'hist-ticket-159-4076', 'prod-mocha', 1, 16500, 0, '2026-04-07T16:15:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4076-3', 'hist-ticket-159-4076', 'prod-americano', 1, 12000, 0, '2026-04-07T16:15:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-159-4076-4', 'hist-ticket-159-4076', 'prod-americano', 1, 12000, 0, '2026-04-07T16:15:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-159-4076', 'hist-ticket-159-4076', 'cash', 57000, 'completed', '2026-04-07T16:15:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4077', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-08T09:22:15.000Z', '2026-04-08T09:22:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4077-1', 'hist-ticket-160-4077', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T09:22:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4077-2', 'hist-ticket-160-4077', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T09:22:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4077-3', 'hist-ticket-160-4077', 'prod-mocha', 1, 16500, 0, '2026-04-08T09:22:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4077', 'hist-ticket-160-4077', 'cash', 45500, 'completed', '2026-04-08T09:22:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4078', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-08T08:09:25.000Z', '2026-04-08T08:09:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4078-1', 'hist-ticket-160-4078', 'prod-americano', 1, 12000, 0, '2026-04-08T08:09:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4078-2', 'hist-ticket-160-4078', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T08:09:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4078', 'hist-ticket-160-4078', 'cash', 26500, 'completed', '2026-04-08T08:09:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4079', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-08T14:56:13.000Z', '2026-04-08T14:56:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4079-1', 'hist-ticket-160-4079', 'prod-mocha', 1, 16500, 0, '2026-04-08T14:56:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4079', 'hist-ticket-160-4079', 'cash', 16500, 'completed', '2026-04-08T14:56:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4080', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-08T18:17:37.000Z', '2026-04-08T18:17:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4080-1', 'hist-ticket-160-4080', 'prod-mocha', 1, 16500, 0, '2026-04-08T18:17:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4080-2', 'hist-ticket-160-4080', 'prod-latte', 1, 15000, 0, '2026-04-08T18:17:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4080', 'hist-ticket-160-4080', 'cash', 31500, 'completed', '2026-04-08T18:17:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4081', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-08T18:53:53.000Z', '2026-04-08T18:53:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4081-1', 'hist-ticket-160-4081', 'prod-americano', 1, 12000, 0, '2026-04-08T18:53:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4081-2', 'hist-ticket-160-4081', 'prod-mocha', 1, 16500, 0, '2026-04-08T18:53:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4081-3', 'hist-ticket-160-4081', 'prod-americano', 1, 12000, 0, '2026-04-08T18:53:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4081', 'hist-ticket-160-4081', 'cash', 40500, 'completed', '2026-04-08T18:53:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4082', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-08T08:09:57.000Z', '2026-04-08T08:09:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4082-1', 'hist-ticket-160-4082', 'prod-latte', 1, 15000, 0, '2026-04-08T08:09:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4082-2', 'hist-ticket-160-4082', 'prod-mocha', 1, 16500, 0, '2026-04-08T08:09:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4082', 'hist-ticket-160-4082', 'cash', 31500, 'completed', '2026-04-08T08:09:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4083', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-08T17:35:47.000Z', '2026-04-08T17:35:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4083-1', 'hist-ticket-160-4083', 'prod-latte', 1, 15000, 0, '2026-04-08T17:35:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4083-2', 'hist-ticket-160-4083', 'prod-americano', 1, 12000, 0, '2026-04-08T17:35:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4083', 'hist-ticket-160-4083', 'cash', 27000, 'completed', '2026-04-08T17:35:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4084', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-08T14:05:31.000Z', '2026-04-08T14:05:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4084-1', 'hist-ticket-160-4084', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T14:05:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4084-2', 'hist-ticket-160-4084', 'prod-americano', 1, 12000, 0, '2026-04-08T14:05:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4084', 'hist-ticket-160-4084', 'cash', 26500, 'completed', '2026-04-08T14:05:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4085', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-08T11:05:51.000Z', '2026-04-08T11:05:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4085-1', 'hist-ticket-160-4085', 'prod-mocha', 1, 16500, 0, '2026-04-08T11:05:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4085-2', 'hist-ticket-160-4085', 'prod-latte', 1, 15000, 0, '2026-04-08T11:05:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4085', 'hist-ticket-160-4085', 'cash', 31500, 'completed', '2026-04-08T11:05:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4086', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-08T11:39:29.000Z', '2026-04-08T11:39:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4086-1', 'hist-ticket-160-4086', 'prod-latte', 1, 15000, 0, '2026-04-08T11:39:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4086-2', 'hist-ticket-160-4086', 'prod-mocha', 1, 16500, 0, '2026-04-08T11:39:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4086-3', 'hist-ticket-160-4086', 'prod-mocha', 1, 16500, 0, '2026-04-08T11:39:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4086', 'hist-ticket-160-4086', 'cash', 48000, 'completed', '2026-04-08T11:39:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4087', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-08T17:22:31.000Z', '2026-04-08T17:22:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4087-1', 'hist-ticket-160-4087', 'prod-latte', 1, 15000, 0, '2026-04-08T17:22:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4087', 'hist-ticket-160-4087', 'cash', 15000, 'completed', '2026-04-08T17:22:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4088', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-08T08:21:59.000Z', '2026-04-08T08:21:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4088-1', 'hist-ticket-160-4088', 'prod-mocha', 1, 16500, 0, '2026-04-08T08:21:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4088-2', 'hist-ticket-160-4088', 'prod-americano', 1, 12000, 0, '2026-04-08T08:21:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4088-3', 'hist-ticket-160-4088', 'prod-mocha', 1, 16500, 0, '2026-04-08T08:21:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4088-4', 'hist-ticket-160-4088', 'prod-americano', 1, 12000, 0, '2026-04-08T08:21:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4088', 'hist-ticket-160-4088', 'cash', 57000, 'completed', '2026-04-08T08:21:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4089', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-08T16:12:14.000Z', '2026-04-08T16:12:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4089-1', 'hist-ticket-160-4089', 'prod-americano', 1, 12000, 0, '2026-04-08T16:12:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4089-2', 'hist-ticket-160-4089', 'prod-latte', 1, 15000, 0, '2026-04-08T16:12:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4089-3', 'hist-ticket-160-4089', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T16:12:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4089-4', 'hist-ticket-160-4089', 'prod-latte', 1, 15000, 0, '2026-04-08T16:12:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4089', 'hist-ticket-160-4089', 'cash', 56500, 'completed', '2026-04-08T16:12:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4090', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-08T17:39:19.000Z', '2026-04-08T17:39:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4090-1', 'hist-ticket-160-4090', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T17:39:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4090-2', 'hist-ticket-160-4090', 'prod-mocha', 1, 16500, 0, '2026-04-08T17:39:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4090-3', 'hist-ticket-160-4090', 'prod-mocha', 1, 16500, 0, '2026-04-08T17:39:19.000Z');