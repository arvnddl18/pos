INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2981-1', 'hist-ticket-120-2981', 'prod-mocha', 1, 16500, 0, '2026-02-27T17:43:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2981-2', 'hist-ticket-120-2981', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T17:43:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2981-3', 'hist-ticket-120-2981', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T17:43:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2981', 'hist-ticket-120-2981', 'cash', 45500, 'completed', '2026-02-27T17:43:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2982', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-27T15:02:42.000Z', '2026-02-27T15:02:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2982-1', 'hist-ticket-120-2982', 'prod-americano', 1, 12000, 0, '2026-02-27T15:02:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2982', 'hist-ticket-120-2982', 'cash', 12000, 'completed', '2026-02-27T15:02:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2983', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-27T10:07:19.000Z', '2026-02-27T10:07:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2983-1', 'hist-ticket-120-2983', 'prod-americano', 1, 12000, 0, '2026-02-27T10:07:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2983-2', 'hist-ticket-120-2983', 'prod-americano', 1, 12000, 0, '2026-02-27T10:07:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2983-3', 'hist-ticket-120-2983', 'prod-latte', 1, 15000, 0, '2026-02-27T10:07:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2983-4', 'hist-ticket-120-2983', 'prod-americano', 1, 12000, 0, '2026-02-27T10:07:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2983', 'hist-ticket-120-2983', 'cash', 51000, 'completed', '2026-02-27T10:07:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2984', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-27T09:39:46.000Z', '2026-02-27T09:39:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2984-1', 'hist-ticket-120-2984', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T09:39:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2984-2', 'hist-ticket-120-2984', 'prod-americano', 1, 12000, 0, '2026-02-27T09:39:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2984', 'hist-ticket-120-2984', 'cash', 26500, 'completed', '2026-02-27T09:39:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2985', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-27T19:13:30.000Z', '2026-02-27T19:13:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2985-1', 'hist-ticket-120-2985', 'prod-mocha', 1, 16500, 0, '2026-02-27T19:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2985-2', 'hist-ticket-120-2985', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T19:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2985-3', 'hist-ticket-120-2985', 'prod-americano', 1, 12000, 0, '2026-02-27T19:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2985-4', 'hist-ticket-120-2985', 'prod-latte', 1, 15000, 0, '2026-02-27T19:13:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2985', 'hist-ticket-120-2985', 'cash', 58000, 'completed', '2026-02-27T19:13:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2986', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-02-28T17:23:26.000Z', '2026-02-28T17:23:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2986-1', 'hist-ticket-121-2986', 'prod-latte', 1, 15000, 0, '2026-02-28T17:23:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2986', 'hist-ticket-121-2986', 'cash', 15000, 'completed', '2026-02-28T17:23:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2987', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-28T16:46:17.000Z', '2026-02-28T16:46:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2987-1', 'hist-ticket-121-2987', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T16:46:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2987-2', 'hist-ticket-121-2987', 'prod-latte', 1, 15000, 0, '2026-02-28T16:46:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2987', 'hist-ticket-121-2987', 'cash', 29500, 'completed', '2026-02-28T16:46:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2988', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-02-28T09:10:31.000Z', '2026-02-28T09:10:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2988-1', 'hist-ticket-121-2988', 'prod-mocha', 1, 16500, 0, '2026-02-28T09:10:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2988-2', 'hist-ticket-121-2988', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T09:10:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2988-3', 'hist-ticket-121-2988', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T09:10:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2988-4', 'hist-ticket-121-2988', 'prod-americano', 1, 12000, 0, '2026-02-28T09:10:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2988', 'hist-ticket-121-2988', 'cash', 57500, 'completed', '2026-02-28T09:10:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2989', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-28T14:35:08.000Z', '2026-02-28T14:35:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2989-1', 'hist-ticket-121-2989', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T14:35:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2989-2', 'hist-ticket-121-2989', 'prod-latte', 1, 15000, 0, '2026-02-28T14:35:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2989', 'hist-ticket-121-2989', 'cash', 29500, 'completed', '2026-02-28T14:35:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2990', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-28T14:46:22.000Z', '2026-02-28T14:46:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2990-1', 'hist-ticket-121-2990', 'prod-americano', 1, 12000, 0, '2026-02-28T14:46:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2990', 'hist-ticket-121-2990', 'cash', 12000, 'completed', '2026-02-28T14:46:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2991', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-28T17:07:18.000Z', '2026-02-28T17:07:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2991-1', 'hist-ticket-121-2991', 'prod-latte', 1, 15000, 0, '2026-02-28T17:07:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2991-2', 'hist-ticket-121-2991', 'prod-americano', 1, 12000, 0, '2026-02-28T17:07:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2991', 'hist-ticket-121-2991', 'cash', 27000, 'completed', '2026-02-28T17:07:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2992', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-28T16:29:27.000Z', '2026-02-28T16:29:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2992-1', 'hist-ticket-121-2992', 'prod-mocha', 1, 16500, 0, '2026-02-28T16:29:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2992-2', 'hist-ticket-121-2992', 'prod-latte', 1, 15000, 0, '2026-02-28T16:29:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2992-3', 'hist-ticket-121-2992', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T16:29:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2992-4', 'hist-ticket-121-2992', 'prod-mocha', 1, 16500, 0, '2026-02-28T16:29:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2992', 'hist-ticket-121-2992', 'cash', 62500, 'completed', '2026-02-28T16:29:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2993', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-28T18:38:39.000Z', '2026-02-28T18:38:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2993-1', 'hist-ticket-121-2993', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T18:38:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2993', 'hist-ticket-121-2993', 'cash', 14500, 'completed', '2026-02-28T18:38:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2994', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-28T10:31:04.000Z', '2026-02-28T10:31:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2994-1', 'hist-ticket-121-2994', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T10:31:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2994-2', 'hist-ticket-121-2994', 'prod-latte', 1, 15000, 0, '2026-02-28T10:31:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2994-3', 'hist-ticket-121-2994', 'prod-americano', 1, 12000, 0, '2026-02-28T10:31:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2994-4', 'hist-ticket-121-2994', 'prod-americano', 1, 12000, 0, '2026-02-28T10:31:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2994', 'hist-ticket-121-2994', 'cash', 53500, 'completed', '2026-02-28T10:31:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2995', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-02-28T10:15:33.000Z', '2026-02-28T10:15:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2995-1', 'hist-ticket-121-2995', 'prod-mocha', 1, 16500, 0, '2026-02-28T10:15:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2995-2', 'hist-ticket-121-2995', 'prod-americano', 1, 12000, 0, '2026-02-28T10:15:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2995-3', 'hist-ticket-121-2995', 'prod-mocha', 1, 16500, 0, '2026-02-28T10:15:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2995-4', 'hist-ticket-121-2995', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T10:15:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2995', 'hist-ticket-121-2995', 'cash', 59500, 'completed', '2026-02-28T10:15:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2996', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-28T16:34:47.000Z', '2026-02-28T16:34:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2996-1', 'hist-ticket-121-2996', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T16:34:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2996-2', 'hist-ticket-121-2996', 'prod-mocha', 1, 16500, 0, '2026-02-28T16:34:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2996', 'hist-ticket-121-2996', 'cash', 31000, 'completed', '2026-02-28T16:34:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2997', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-28T17:42:39.000Z', '2026-02-28T17:42:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2997-1', 'hist-ticket-121-2997', 'prod-latte', 1, 15000, 0, '2026-02-28T17:42:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2997-2', 'hist-ticket-121-2997', 'prod-americano', 1, 12000, 0, '2026-02-28T17:42:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2997', 'hist-ticket-121-2997', 'cash', 27000, 'completed', '2026-02-28T17:42:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2998', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-28T19:56:16.000Z', '2026-02-28T19:56:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2998-1', 'hist-ticket-121-2998', 'prod-latte', 1, 15000, 0, '2026-02-28T19:56:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2998-2', 'hist-ticket-121-2998', 'prod-americano', 1, 12000, 0, '2026-02-28T19:56:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2998-3', 'hist-ticket-121-2998', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T19:56:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2998', 'hist-ticket-121-2998', 'cash', 41500, 'completed', '2026-02-28T19:56:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-2999', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-28T08:36:09.000Z', '2026-02-28T08:36:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2999-1', 'hist-ticket-121-2999', 'prod-americano', 1, 12000, 0, '2026-02-28T08:36:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2999-2', 'hist-ticket-121-2999', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T08:36:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-2999-3', 'hist-ticket-121-2999', 'prod-mocha', 1, 16500, 0, '2026-02-28T08:36:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-2999', 'hist-ticket-121-2999', 'cash', 43000, 'completed', '2026-02-28T08:36:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3000', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-02-28T08:01:54.000Z', '2026-02-28T08:01:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3000-1', 'hist-ticket-121-3000', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T08:01:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3000-2', 'hist-ticket-121-3000', 'prod-latte', 1, 15000, 0, '2026-02-28T08:01:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3000-3', 'hist-ticket-121-3000', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T08:01:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3000-4', 'hist-ticket-121-3000', 'prod-mocha', 1, 16500, 0, '2026-02-28T08:01:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3000', 'hist-ticket-121-3000', 'cash', 60500, 'completed', '2026-02-28T08:01:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3001', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-28T14:55:06.000Z', '2026-02-28T14:55:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3001-1', 'hist-ticket-121-3001', 'prod-mocha', 1, 16500, 0, '2026-02-28T14:55:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3001', 'hist-ticket-121-3001', 'cash', 16500, 'completed', '2026-02-28T14:55:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3002', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-28T10:15:06.000Z', '2026-02-28T10:15:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3002-1', 'hist-ticket-121-3002', 'prod-mocha', 1, 16500, 0, '2026-02-28T10:15:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3002-2', 'hist-ticket-121-3002', 'prod-americano', 1, 12000, 0, '2026-02-28T10:15:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3002-3', 'hist-ticket-121-3002', 'prod-americano', 1, 12000, 0, '2026-02-28T10:15:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3002-4', 'hist-ticket-121-3002', 'prod-latte', 1, 15000, 0, '2026-02-28T10:15:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3002', 'hist-ticket-121-3002', 'cash', 55500, 'completed', '2026-02-28T10:15:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3003', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-02-28T14:02:42.000Z', '2026-02-28T14:02:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3003-1', 'hist-ticket-121-3003', 'prod-americano', 1, 12000, 0, '2026-02-28T14:02:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3003', 'hist-ticket-121-3003', 'cash', 12000, 'completed', '2026-02-28T14:02:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3004', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-28T12:28:07.000Z', '2026-02-28T12:28:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3004-1', 'hist-ticket-121-3004', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T12:28:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3004-2', 'hist-ticket-121-3004', 'prod-mocha', 1, 16500, 0, '2026-02-28T12:28:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3004', 'hist-ticket-121-3004', 'cash', 31000, 'completed', '2026-02-28T12:28:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3005', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-28T15:40:02.000Z', '2026-02-28T15:40:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3005-1', 'hist-ticket-121-3005', 'prod-mocha', 1, 16500, 0, '2026-02-28T15:40:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3005', 'hist-ticket-121-3005', 'cash', 16500, 'completed', '2026-02-28T15:40:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3006', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-28T13:03:10.000Z', '2026-02-28T13:03:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3006-1', 'hist-ticket-121-3006', 'prod-latte', 1, 15000, 0, '2026-02-28T13:03:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3006-2', 'hist-ticket-121-3006', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T13:03:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3006-3', 'hist-ticket-121-3006', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T13:03:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3006', 'hist-ticket-121-3006', 'cash', 44000, 'completed', '2026-02-28T13:03:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3007', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-02-28T14:29:16.000Z', '2026-02-28T14:29:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3007-1', 'hist-ticket-121-3007', 'prod-mocha', 1, 16500, 0, '2026-02-28T14:29:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3007-2', 'hist-ticket-121-3007', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T14:29:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3007-3', 'hist-ticket-121-3007', 'prod-americano', 1, 12000, 0, '2026-02-28T14:29:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3007', 'hist-ticket-121-3007', 'cash', 43000, 'completed', '2026-02-28T14:29:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3008', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-02-28T17:34:00.000Z', '2026-02-28T17:34:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3008-1', 'hist-ticket-121-3008', 'prod-americano', 1, 12000, 0, '2026-02-28T17:34:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3008-2', 'hist-ticket-121-3008', 'prod-mocha', 1, 16500, 0, '2026-02-28T17:34:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3008-3', 'hist-ticket-121-3008', 'prod-latte', 1, 15000, 0, '2026-02-28T17:34:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3008-4', 'hist-ticket-121-3008', 'prod-americano', 1, 12000, 0, '2026-02-28T17:34:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3008', 'hist-ticket-121-3008', 'cash', 55500, 'completed', '2026-02-28T17:34:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3009', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-02-28T10:24:13.000Z', '2026-02-28T10:24:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3009-1', 'hist-ticket-121-3009', 'prod-latte', 1, 15000, 0, '2026-02-28T10:24:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3009-2', 'hist-ticket-121-3009', 'prod-latte', 1, 15000, 0, '2026-02-28T10:24:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3009-3', 'hist-ticket-121-3009', 'prod-americano', 1, 12000, 0, '2026-02-28T10:24:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3009', 'hist-ticket-121-3009', 'cash', 42000, 'completed', '2026-02-28T10:24:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3010', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-02-28T13:50:15.000Z', '2026-02-28T13:50:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3010-1', 'hist-ticket-121-3010', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T13:50:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3010-2', 'hist-ticket-121-3010', 'prod-americano', 1, 12000, 0, '2026-02-28T13:50:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3010-3', 'hist-ticket-121-3010', 'prod-latte', 1, 15000, 0, '2026-02-28T13:50:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3010-4', 'hist-ticket-121-3010', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T13:50:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3010', 'hist-ticket-121-3010', 'cash', 56000, 'completed', '2026-02-28T13:50:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3011', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-28T19:15:26.000Z', '2026-02-28T19:15:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3011-1', 'hist-ticket-121-3011', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T19:15:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3011-2', 'hist-ticket-121-3011', 'prod-mocha', 1, 16500, 0, '2026-02-28T19:15:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3011', 'hist-ticket-121-3011', 'cash', 31000, 'completed', '2026-02-28T19:15:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3012', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-28T12:20:49.000Z', '2026-02-28T12:20:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3012-1', 'hist-ticket-121-3012', 'prod-americano', 1, 12000, 0, '2026-02-28T12:20:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3012-2', 'hist-ticket-121-3012', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T12:20:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3012-3', 'hist-ticket-121-3012', 'prod-americano', 1, 12000, 0, '2026-02-28T12:20:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3012', 'hist-ticket-121-3012', 'cash', 38500, 'completed', '2026-02-28T12:20:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3013', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-02-28T16:04:24.000Z', '2026-02-28T16:04:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3013-1', 'hist-ticket-121-3013', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T16:04:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3013', 'hist-ticket-121-3013', 'cash', 14500, 'completed', '2026-02-28T16:04:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3014', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-28T18:49:04.000Z', '2026-02-28T18:49:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3014-1', 'hist-ticket-121-3014', 'prod-americano', 1, 12000, 0, '2026-02-28T18:49:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3014-2', 'hist-ticket-121-3014', 'prod-latte', 1, 15000, 0, '2026-02-28T18:49:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3014-3', 'hist-ticket-121-3014', 'prod-mocha', 1, 16500, 0, '2026-02-28T18:49:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3014-4', 'hist-ticket-121-3014', 'prod-americano', 1, 12000, 0, '2026-02-28T18:49:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3014', 'hist-ticket-121-3014', 'cash', 55500, 'completed', '2026-02-28T18:49:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3015', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-28T14:28:23.000Z', '2026-02-28T14:28:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3015-1', 'hist-ticket-121-3015', 'prod-mocha', 1, 16500, 0, '2026-02-28T14:28:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3015-2', 'hist-ticket-121-3015', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T14:28:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3015-3', 'hist-ticket-121-3015', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T14:28:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3015', 'hist-ticket-121-3015', 'cash', 45500, 'completed', '2026-02-28T14:28:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3016', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-02-28T12:55:32.000Z', '2026-02-28T12:55:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3016-1', 'hist-ticket-121-3016', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T12:55:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3016-2', 'hist-ticket-121-3016', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T12:55:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3016-3', 'hist-ticket-121-3016', 'prod-mocha', 1, 16500, 0, '2026-02-28T12:55:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3016', 'hist-ticket-121-3016', 'cash', 45500, 'completed', '2026-02-28T12:55:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3017', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-28T15:01:50.000Z', '2026-02-28T15:01:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3017-1', 'hist-ticket-121-3017', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T15:01:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3017-2', 'hist-ticket-121-3017', 'prod-americano', 1, 12000, 0, '2026-02-28T15:01:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3017', 'hist-ticket-121-3017', 'cash', 26500, 'completed', '2026-02-28T15:01:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-121-3018', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-28T19:25:57.000Z', '2026-02-28T19:25:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3018-1', 'hist-ticket-121-3018', 'prod-latte', 1, 15000, 0, '2026-02-28T19:25:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-121-3018-2', 'hist-ticket-121-3018', 'prod-cappuccino', 1, 14500, 0, '2026-02-28T19:25:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-121-3018', 'hist-ticket-121-3018', 'cash', 29500, 'completed', '2026-02-28T19:25:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3019', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-01T08:09:46.000Z', '2026-03-01T08:09:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3019-1', 'hist-ticket-122-3019', 'prod-mocha', 1, 16500, 0, '2026-03-01T08:09:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3019', 'hist-ticket-122-3019', 'cash', 16500, 'completed', '2026-03-01T08:09:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3020', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-01T18:29:43.000Z', '2026-03-01T18:29:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3020-1', 'hist-ticket-122-3020', 'prod-latte', 1, 15000, 0, '2026-03-01T18:29:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3020-2', 'hist-ticket-122-3020', 'prod-mocha', 1, 16500, 0, '2026-03-01T18:29:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3020-3', 'hist-ticket-122-3020', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T18:29:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3020', 'hist-ticket-122-3020', 'cash', 46000, 'completed', '2026-03-01T18:29:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3021', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-03-01T15:46:17.000Z', '2026-03-01T15:46:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3021-1', 'hist-ticket-122-3021', 'prod-latte', 1, 15000, 0, '2026-03-01T15:46:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3021-2', 'hist-ticket-122-3021', 'prod-latte', 1, 15000, 0, '2026-03-01T15:46:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3021-3', 'hist-ticket-122-3021', 'prod-americano', 1, 12000, 0, '2026-03-01T15:46:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3021-4', 'hist-ticket-122-3021', 'prod-mocha', 1, 16500, 0, '2026-03-01T15:46:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3021', 'hist-ticket-122-3021', 'cash', 58500, 'completed', '2026-03-01T15:46:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3022', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-01T15:47:18.000Z', '2026-03-01T15:47:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3022-1', 'hist-ticket-122-3022', 'prod-mocha', 1, 16500, 0, '2026-03-01T15:47:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3022-2', 'hist-ticket-122-3022', 'prod-americano', 1, 12000, 0, '2026-03-01T15:47:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3022-3', 'hist-ticket-122-3022', 'prod-mocha', 1, 16500, 0, '2026-03-01T15:47:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3022', 'hist-ticket-122-3022', 'cash', 45000, 'completed', '2026-03-01T15:47:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3023', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-03-01T12:16:54.000Z', '2026-03-01T12:16:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3023-1', 'hist-ticket-122-3023', 'prod-mocha', 1, 16500, 0, '2026-03-01T12:16:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3023-2', 'hist-ticket-122-3023', 'prod-americano', 1, 12000, 0, '2026-03-01T12:16:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3023', 'hist-ticket-122-3023', 'cash', 28500, 'completed', '2026-03-01T12:16:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3024', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-01T17:23:31.000Z', '2026-03-01T17:23:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3024-1', 'hist-ticket-122-3024', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T17:23:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3024-2', 'hist-ticket-122-3024', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T17:23:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3024-3', 'hist-ticket-122-3024', 'prod-mocha', 1, 16500, 0, '2026-03-01T17:23:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3024', 'hist-ticket-122-3024', 'cash', 45500, 'completed', '2026-03-01T17:23:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3025', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-01T18:58:53.000Z', '2026-03-01T18:58:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3025-1', 'hist-ticket-122-3025', 'prod-americano', 1, 12000, 0, '2026-03-01T18:58:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3025', 'hist-ticket-122-3025', 'cash', 12000, 'completed', '2026-03-01T18:58:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3026', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-03-01T13:50:39.000Z', '2026-03-01T13:50:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3026-1', 'hist-ticket-122-3026', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T13:50:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3026', 'hist-ticket-122-3026', 'cash', 14500, 'completed', '2026-03-01T13:50:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3027', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-01T08:14:44.000Z', '2026-03-01T08:14:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3027-1', 'hist-ticket-122-3027', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T08:14:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3027-2', 'hist-ticket-122-3027', 'prod-americano', 1, 12000, 0, '2026-03-01T08:14:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3027-3', 'hist-ticket-122-3027', 'prod-mocha', 1, 16500, 0, '2026-03-01T08:14:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3027', 'hist-ticket-122-3027', 'cash', 43000, 'completed', '2026-03-01T08:14:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3028', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-01T17:58:31.000Z', '2026-03-01T17:58:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3028-1', 'hist-ticket-122-3028', 'prod-americano', 1, 12000, 0, '2026-03-01T17:58:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3028-2', 'hist-ticket-122-3028', 'prod-americano', 1, 12000, 0, '2026-03-01T17:58:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3028-3', 'hist-ticket-122-3028', 'prod-latte', 1, 15000, 0, '2026-03-01T17:58:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3028', 'hist-ticket-122-3028', 'cash', 39000, 'completed', '2026-03-01T17:58:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3029', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-01T12:04:25.000Z', '2026-03-01T12:04:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3029-1', 'hist-ticket-122-3029', 'prod-latte', 1, 15000, 0, '2026-03-01T12:04:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3029-2', 'hist-ticket-122-3029', 'prod-americano', 1, 12000, 0, '2026-03-01T12:04:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3029-3', 'hist-ticket-122-3029', 'prod-latte', 1, 15000, 0, '2026-03-01T12:04:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3029', 'hist-ticket-122-3029', 'cash', 42000, 'completed', '2026-03-01T12:04:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3030', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-03-01T18:41:59.000Z', '2026-03-01T18:41:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3030-1', 'hist-ticket-122-3030', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T18:41:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3030-2', 'hist-ticket-122-3030', 'prod-mocha', 1, 16500, 0, '2026-03-01T18:41:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3030', 'hist-ticket-122-3030', 'cash', 31000, 'completed', '2026-03-01T18:41:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3031', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-01T10:40:07.000Z', '2026-03-01T10:40:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3031-1', 'hist-ticket-122-3031', 'prod-mocha', 1, 16500, 0, '2026-03-01T10:40:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3031', 'hist-ticket-122-3031', 'cash', 16500, 'completed', '2026-03-01T10:40:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3032', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-03-01T12:58:38.000Z', '2026-03-01T12:58:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3032-1', 'hist-ticket-122-3032', 'prod-latte', 1, 15000, 0, '2026-03-01T12:58:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3032-2', 'hist-ticket-122-3032', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T12:58:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3032-3', 'hist-ticket-122-3032', 'prod-mocha', 1, 16500, 0, '2026-03-01T12:58:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3032', 'hist-ticket-122-3032', 'cash', 46000, 'completed', '2026-03-01T12:58:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3033', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-01T11:34:18.000Z', '2026-03-01T11:34:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3033-1', 'hist-ticket-122-3033', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T11:34:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3033-2', 'hist-ticket-122-3033', 'prod-americano', 1, 12000, 0, '2026-03-01T11:34:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3033', 'hist-ticket-122-3033', 'cash', 26500, 'completed', '2026-03-01T11:34:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3034', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-01T08:39:29.000Z', '2026-03-01T08:39:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3034-1', 'hist-ticket-122-3034', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T08:39:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3034-2', 'hist-ticket-122-3034', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T08:39:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3034-3', 'hist-ticket-122-3034', 'prod-latte', 1, 15000, 0, '2026-03-01T08:39:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3034-4', 'hist-ticket-122-3034', 'prod-mocha', 1, 16500, 0, '2026-03-01T08:39:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3034', 'hist-ticket-122-3034', 'cash', 60500, 'completed', '2026-03-01T08:39:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3035', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-01T14:55:35.000Z', '2026-03-01T14:55:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3035-1', 'hist-ticket-122-3035', 'prod-americano', 1, 12000, 0, '2026-03-01T14:55:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3035-2', 'hist-ticket-122-3035', 'prod-mocha', 1, 16500, 0, '2026-03-01T14:55:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3035-3', 'hist-ticket-122-3035', 'prod-latte', 1, 15000, 0, '2026-03-01T14:55:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3035-4', 'hist-ticket-122-3035', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T14:55:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3035', 'hist-ticket-122-3035', 'cash', 58000, 'completed', '2026-03-01T14:55:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3036', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-03-01T10:28:32.000Z', '2026-03-01T10:28:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3036-1', 'hist-ticket-122-3036', 'prod-americano', 1, 12000, 0, '2026-03-01T10:28:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3036-2', 'hist-ticket-122-3036', 'prod-mocha', 1, 16500, 0, '2026-03-01T10:28:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3036-3', 'hist-ticket-122-3036', 'prod-latte', 1, 15000, 0, '2026-03-01T10:28:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3036', 'hist-ticket-122-3036', 'cash', 43500, 'completed', '2026-03-01T10:28:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3037', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-01T09:34:10.000Z', '2026-03-01T09:34:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3037-1', 'hist-ticket-122-3037', 'prod-mocha', 1, 16500, 0, '2026-03-01T09:34:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3037-2', 'hist-ticket-122-3037', 'prod-mocha', 1, 16500, 0, '2026-03-01T09:34:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3037', 'hist-ticket-122-3037', 'cash', 33000, 'completed', '2026-03-01T09:34:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3038', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-01T16:32:07.000Z', '2026-03-01T16:32:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3038-1', 'hist-ticket-122-3038', 'prod-mocha', 1, 16500, 0, '2026-03-01T16:32:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3038-2', 'hist-ticket-122-3038', 'prod-latte', 1, 15000, 0, '2026-03-01T16:32:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3038-3', 'hist-ticket-122-3038', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T16:32:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3038', 'hist-ticket-122-3038', 'cash', 46000, 'completed', '2026-03-01T16:32:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3039', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-01T15:03:47.000Z', '2026-03-01T15:03:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3039-1', 'hist-ticket-122-3039', 'prod-latte', 1, 15000, 0, '2026-03-01T15:03:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3039', 'hist-ticket-122-3039', 'cash', 15000, 'completed', '2026-03-01T15:03:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3040', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-01T11:11:58.000Z', '2026-03-01T11:11:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3040-1', 'hist-ticket-122-3040', 'prod-mocha', 1, 16500, 0, '2026-03-01T11:11:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3040-2', 'hist-ticket-122-3040', 'prod-americano', 1, 12000, 0, '2026-03-01T11:11:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3040', 'hist-ticket-122-3040', 'cash', 28500, 'completed', '2026-03-01T11:11:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3041', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-01T08:31:15.000Z', '2026-03-01T08:31:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3041-1', 'hist-ticket-122-3041', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T08:31:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3041-2', 'hist-ticket-122-3041', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T08:31:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3041-3', 'hist-ticket-122-3041', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T08:31:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3041', 'hist-ticket-122-3041', 'cash', 43500, 'completed', '2026-03-01T08:31:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3042', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-01T16:47:02.000Z', '2026-03-01T16:47:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3042-1', 'hist-ticket-122-3042', 'prod-americano', 1, 12000, 0, '2026-03-01T16:47:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3042-2', 'hist-ticket-122-3042', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T16:47:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3042', 'hist-ticket-122-3042', 'cash', 26500, 'completed', '2026-03-01T16:47:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3043', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-03-01T10:21:37.000Z', '2026-03-01T10:21:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3043-1', 'hist-ticket-122-3043', 'prod-mocha', 1, 16500, 0, '2026-03-01T10:21:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3043-2', 'hist-ticket-122-3043', 'prod-americano', 1, 12000, 0, '2026-03-01T10:21:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3043-3', 'hist-ticket-122-3043', 'prod-americano', 1, 12000, 0, '2026-03-01T10:21:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3043-4', 'hist-ticket-122-3043', 'prod-latte', 1, 15000, 0, '2026-03-01T10:21:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3043', 'hist-ticket-122-3043', 'cash', 55500, 'completed', '2026-03-01T10:21:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3044', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-01T19:46:40.000Z', '2026-03-01T19:46:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3044-1', 'hist-ticket-122-3044', 'prod-latte', 1, 15000, 0, '2026-03-01T19:46:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3044-2', 'hist-ticket-122-3044', 'prod-mocha', 1, 16500, 0, '2026-03-01T19:46:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3044', 'hist-ticket-122-3044', 'cash', 31500, 'completed', '2026-03-01T19:46:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3045', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-01T11:55:48.000Z', '2026-03-01T11:55:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3045-1', 'hist-ticket-122-3045', 'prod-mocha', 1, 16500, 0, '2026-03-01T11:55:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3045-2', 'hist-ticket-122-3045', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T11:55:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3045-3', 'hist-ticket-122-3045', 'prod-americano', 1, 12000, 0, '2026-03-01T11:55:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3045-4', 'hist-ticket-122-3045', 'prod-mocha', 1, 16500, 0, '2026-03-01T11:55:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3045', 'hist-ticket-122-3045', 'cash', 59500, 'completed', '2026-03-01T11:55:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3046', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-01T14:07:48.000Z', '2026-03-01T14:07:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3046-1', 'hist-ticket-122-3046', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T14:07:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3046-2', 'hist-ticket-122-3046', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T14:07:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3046-3', 'hist-ticket-122-3046', 'prod-americano', 1, 12000, 0, '2026-03-01T14:07:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3046-4', 'hist-ticket-122-3046', 'prod-latte', 1, 15000, 0, '2026-03-01T14:07:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3046', 'hist-ticket-122-3046', 'cash', 56000, 'completed', '2026-03-01T14:07:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3047', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-01T16:43:45.000Z', '2026-03-01T16:43:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3047-1', 'hist-ticket-122-3047', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T16:43:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3047-2', 'hist-ticket-122-3047', 'prod-latte', 1, 15000, 0, '2026-03-01T16:43:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3047-3', 'hist-ticket-122-3047', 'prod-latte', 1, 15000, 0, '2026-03-01T16:43:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3047', 'hist-ticket-122-3047', 'cash', 44500, 'completed', '2026-03-01T16:43:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3048', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-01T17:19:39.000Z', '2026-03-01T17:19:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3048-1', 'hist-ticket-122-3048', 'prod-latte', 1, 15000, 0, '2026-03-01T17:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3048-2', 'hist-ticket-122-3048', 'prod-americano', 1, 12000, 0, '2026-03-01T17:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3048-3', 'hist-ticket-122-3048', 'prod-mocha', 1, 16500, 0, '2026-03-01T17:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3048-4', 'hist-ticket-122-3048', 'prod-latte', 1, 15000, 0, '2026-03-01T17:19:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3048', 'hist-ticket-122-3048', 'cash', 58500, 'completed', '2026-03-01T17:19:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3049', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-01T14:28:23.000Z', '2026-03-01T14:28:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3049-1', 'hist-ticket-122-3049', 'prod-mocha', 1, 16500, 0, '2026-03-01T14:28:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3049-2', 'hist-ticket-122-3049', 'prod-latte', 1, 15000, 0, '2026-03-01T14:28:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3049-3', 'hist-ticket-122-3049', 'prod-mocha', 1, 16500, 0, '2026-03-01T14:28:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3049', 'hist-ticket-122-3049', 'cash', 48000, 'completed', '2026-03-01T14:28:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3050', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-01T11:33:11.000Z', '2026-03-01T11:33:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3050-1', 'hist-ticket-122-3050', 'prod-latte', 1, 15000, 0, '2026-03-01T11:33:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3050-2', 'hist-ticket-122-3050', 'prod-americano', 1, 12000, 0, '2026-03-01T11:33:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3050-3', 'hist-ticket-122-3050', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T11:33:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3050-4', 'hist-ticket-122-3050', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T11:33:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3050', 'hist-ticket-122-3050', 'cash', 56000, 'completed', '2026-03-01T11:33:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3051', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-01T18:30:19.000Z', '2026-03-01T18:30:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3051-1', 'hist-ticket-122-3051', 'prod-americano', 1, 12000, 0, '2026-03-01T18:30:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3051-2', 'hist-ticket-122-3051', 'prod-latte', 1, 15000, 0, '2026-03-01T18:30:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3051-3', 'hist-ticket-122-3051', 'prod-americano', 1, 12000, 0, '2026-03-01T18:30:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3051', 'hist-ticket-122-3051', 'cash', 39000, 'completed', '2026-03-01T18:30:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-122-3052', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-03-01T11:48:12.000Z', '2026-03-01T11:48:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3052-1', 'hist-ticket-122-3052', 'prod-mocha', 1, 16500, 0, '2026-03-01T11:48:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3052-2', 'hist-ticket-122-3052', 'prod-cappuccino', 1, 14500, 0, '2026-03-01T11:48:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-122-3052-3', 'hist-ticket-122-3052', 'prod-latte', 1, 15000, 0, '2026-03-01T11:48:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-122-3052', 'hist-ticket-122-3052', 'cash', 46000, 'completed', '2026-03-01T11:48:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3053', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-02T09:57:06.000Z', '2026-03-02T09:57:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3053-1', 'hist-ticket-123-3053', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T09:57:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3053-2', 'hist-ticket-123-3053', 'prod-latte', 1, 15000, 0, '2026-03-02T09:57:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3053-3', 'hist-ticket-123-3053', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T09:57:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3053', 'hist-ticket-123-3053', 'cash', 44000, 'completed', '2026-03-02T09:57:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3054', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-02T10:08:08.000Z', '2026-03-02T10:08:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3054-1', 'hist-ticket-123-3054', 'prod-mocha', 1, 16500, 0, '2026-03-02T10:08:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3054-2', 'hist-ticket-123-3054', 'prod-americano', 1, 12000, 0, '2026-03-02T10:08:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3054-3', 'hist-ticket-123-3054', 'prod-mocha', 1, 16500, 0, '2026-03-02T10:08:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3054', 'hist-ticket-123-3054', 'cash', 45000, 'completed', '2026-03-02T10:08:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3055', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-02T12:34:19.000Z', '2026-03-02T12:34:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3055-1', 'hist-ticket-123-3055', 'prod-americano', 1, 12000, 0, '2026-03-02T12:34:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3055-2', 'hist-ticket-123-3055', 'prod-americano', 1, 12000, 0, '2026-03-02T12:34:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3055-3', 'hist-ticket-123-3055', 'prod-latte', 1, 15000, 0, '2026-03-02T12:34:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3055-4', 'hist-ticket-123-3055', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T12:34:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3055', 'hist-ticket-123-3055', 'cash', 53500, 'completed', '2026-03-02T12:34:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3056', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-02T12:07:43.000Z', '2026-03-02T12:07:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3056-1', 'hist-ticket-123-3056', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T12:07:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3056-2', 'hist-ticket-123-3056', 'prod-latte', 1, 15000, 0, '2026-03-02T12:07:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3056-3', 'hist-ticket-123-3056', 'prod-latte', 1, 15000, 0, '2026-03-02T12:07:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3056', 'hist-ticket-123-3056', 'cash', 44500, 'completed', '2026-03-02T12:07:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3057', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-02T10:18:48.000Z', '2026-03-02T10:18:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3057-1', 'hist-ticket-123-3057', 'prod-mocha', 1, 16500, 0, '2026-03-02T10:18:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3057-2', 'hist-ticket-123-3057', 'prod-latte', 1, 15000, 0, '2026-03-02T10:18:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3057', 'hist-ticket-123-3057', 'cash', 31500, 'completed', '2026-03-02T10:18:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3058', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-03-02T14:18:16.000Z', '2026-03-02T14:18:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3058-1', 'hist-ticket-123-3058', 'prod-mocha', 1, 16500, 0, '2026-03-02T14:18:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3058', 'hist-ticket-123-3058', 'cash', 16500, 'completed', '2026-03-02T14:18:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3059', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-02T13:34:24.000Z', '2026-03-02T13:34:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3059-1', 'hist-ticket-123-3059', 'prod-americano', 1, 12000, 0, '2026-03-02T13:34:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3059-2', 'hist-ticket-123-3059', 'prod-latte', 1, 15000, 0, '2026-03-02T13:34:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3059-3', 'hist-ticket-123-3059', 'prod-mocha', 1, 16500, 0, '2026-03-02T13:34:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3059', 'hist-ticket-123-3059', 'cash', 43500, 'completed', '2026-03-02T13:34:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3060', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-02T19:11:14.000Z', '2026-03-02T19:11:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3060-1', 'hist-ticket-123-3060', 'prod-latte', 1, 15000, 0, '2026-03-02T19:11:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3060-2', 'hist-ticket-123-3060', 'prod-latte', 1, 15000, 0, '2026-03-02T19:11:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3060', 'hist-ticket-123-3060', 'cash', 30000, 'completed', '2026-03-02T19:11:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3061', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-02T18:14:26.000Z', '2026-03-02T18:14:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3061-1', 'hist-ticket-123-3061', 'prod-latte', 1, 15000, 0, '2026-03-02T18:14:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3061', 'hist-ticket-123-3061', 'cash', 15000, 'completed', '2026-03-02T18:14:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3062', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-02T15:46:03.000Z', '2026-03-02T15:46:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3062-1', 'hist-ticket-123-3062', 'prod-latte', 1, 15000, 0, '2026-03-02T15:46:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3062-2', 'hist-ticket-123-3062', 'prod-latte', 1, 15000, 0, '2026-03-02T15:46:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3062-3', 'hist-ticket-123-3062', 'prod-americano', 1, 12000, 0, '2026-03-02T15:46:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3062', 'hist-ticket-123-3062', 'cash', 42000, 'completed', '2026-03-02T15:46:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3063', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-02T14:58:14.000Z', '2026-03-02T14:58:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3063-1', 'hist-ticket-123-3063', 'prod-mocha', 1, 16500, 0, '2026-03-02T14:58:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3063-2', 'hist-ticket-123-3063', 'prod-latte', 1, 15000, 0, '2026-03-02T14:58:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3063-3', 'hist-ticket-123-3063', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T14:58:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3063', 'hist-ticket-123-3063', 'cash', 46000, 'completed', '2026-03-02T14:58:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3064', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-02T11:35:16.000Z', '2026-03-02T11:35:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3064-1', 'hist-ticket-123-3064', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T11:35:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3064', 'hist-ticket-123-3064', 'cash', 14500, 'completed', '2026-03-02T11:35:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3065', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-02T10:54:23.000Z', '2026-03-02T10:54:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3065-1', 'hist-ticket-123-3065', 'prod-latte', 1, 15000, 0, '2026-03-02T10:54:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3065-2', 'hist-ticket-123-3065', 'prod-latte', 1, 15000, 0, '2026-03-02T10:54:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3065', 'hist-ticket-123-3065', 'cash', 30000, 'completed', '2026-03-02T10:54:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3066', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-02T13:19:06.000Z', '2026-03-02T13:19:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3066-1', 'hist-ticket-123-3066', 'prod-latte', 1, 15000, 0, '2026-03-02T13:19:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3066-2', 'hist-ticket-123-3066', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T13:19:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3066-3', 'hist-ticket-123-3066', 'prod-latte', 1, 15000, 0, '2026-03-02T13:19:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3066', 'hist-ticket-123-3066', 'cash', 44500, 'completed', '2026-03-02T13:19:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3067', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-03-02T18:19:34.000Z', '2026-03-02T18:19:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3067-1', 'hist-ticket-123-3067', 'prod-americano', 1, 12000, 0, '2026-03-02T18:19:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3067', 'hist-ticket-123-3067', 'cash', 12000, 'completed', '2026-03-02T18:19:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3068', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-02T19:05:08.000Z', '2026-03-02T19:05:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3068-1', 'hist-ticket-123-3068', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T19:05:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3068-2', 'hist-ticket-123-3068', 'prod-mocha', 1, 16500, 0, '2026-03-02T19:05:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3068', 'hist-ticket-123-3068', 'cash', 31000, 'completed', '2026-03-02T19:05:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3069', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-02T17:42:48.000Z', '2026-03-02T17:42:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3069-1', 'hist-ticket-123-3069', 'prod-mocha', 1, 16500, 0, '2026-03-02T17:42:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3069-2', 'hist-ticket-123-3069', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T17:42:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3069-3', 'hist-ticket-123-3069', 'prod-latte', 1, 15000, 0, '2026-03-02T17:42:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3069-4', 'hist-ticket-123-3069', 'prod-mocha', 1, 16500, 0, '2026-03-02T17:42:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3069', 'hist-ticket-123-3069', 'cash', 62500, 'completed', '2026-03-02T17:42:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3070', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-02T19:08:33.000Z', '2026-03-02T19:08:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3070-1', 'hist-ticket-123-3070', 'prod-americano', 1, 12000, 0, '2026-03-02T19:08:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3070-2', 'hist-ticket-123-3070', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T19:08:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3070-3', 'hist-ticket-123-3070', 'prod-latte', 1, 15000, 0, '2026-03-02T19:08:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3070-4', 'hist-ticket-123-3070', 'prod-americano', 1, 12000, 0, '2026-03-02T19:08:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3070', 'hist-ticket-123-3070', 'cash', 53500, 'completed', '2026-03-02T19:08:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3071', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-02T13:14:15.000Z', '2026-03-02T13:14:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3071-1', 'hist-ticket-123-3071', 'prod-mocha', 1, 16500, 0, '2026-03-02T13:14:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3071-2', 'hist-ticket-123-3071', 'prod-americano', 1, 12000, 0, '2026-03-02T13:14:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3071-3', 'hist-ticket-123-3071', 'prod-americano', 1, 12000, 0, '2026-03-02T13:14:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3071-4', 'hist-ticket-123-3071', 'prod-mocha', 1, 16500, 0, '2026-03-02T13:14:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3071', 'hist-ticket-123-3071', 'cash', 57000, 'completed', '2026-03-02T13:14:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3072', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-02T17:40:49.000Z', '2026-03-02T17:40:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3072-1', 'hist-ticket-123-3072', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T17:40:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3072-2', 'hist-ticket-123-3072', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T17:40:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3072-3', 'hist-ticket-123-3072', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T17:40:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3072', 'hist-ticket-123-3072', 'cash', 43500, 'completed', '2026-03-02T17:40:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3073', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-02T09:50:49.000Z', '2026-03-02T09:50:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3073-1', 'hist-ticket-123-3073', 'prod-latte', 1, 15000, 0, '2026-03-02T09:50:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3073-2', 'hist-ticket-123-3073', 'prod-latte', 1, 15000, 0, '2026-03-02T09:50:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3073-3', 'hist-ticket-123-3073', 'prod-americano', 1, 12000, 0, '2026-03-02T09:50:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3073', 'hist-ticket-123-3073', 'cash', 42000, 'completed', '2026-03-02T09:50:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-123-3074', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-02T11:39:45.000Z', '2026-03-02T11:39:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3074-1', 'hist-ticket-123-3074', 'prod-americano', 1, 12000, 0, '2026-03-02T11:39:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3074-2', 'hist-ticket-123-3074', 'prod-latte', 1, 15000, 0, '2026-03-02T11:39:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3074-3', 'hist-ticket-123-3074', 'prod-cappuccino', 1, 14500, 0, '2026-03-02T11:39:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-123-3074-4', 'hist-ticket-123-3074', 'prod-latte', 1, 15000, 0, '2026-03-02T11:39:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-123-3074', 'hist-ticket-123-3074', 'cash', 56500, 'completed', '2026-03-02T11:39:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3075', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-03T08:58:44.000Z', '2026-03-03T08:58:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3075-1', 'hist-ticket-124-3075', 'prod-americano', 1, 12000, 0, '2026-03-03T08:58:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3075-2', 'hist-ticket-124-3075', 'prod-latte', 1, 15000, 0, '2026-03-03T08:58:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3075', 'hist-ticket-124-3075', 'cash', 27000, 'completed', '2026-03-03T08:58:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3076', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-03T12:23:45.000Z', '2026-03-03T12:23:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3076-1', 'hist-ticket-124-3076', 'prod-mocha', 1, 16500, 0, '2026-03-03T12:23:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3076-2', 'hist-ticket-124-3076', 'prod-americano', 1, 12000, 0, '2026-03-03T12:23:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3076-3', 'hist-ticket-124-3076', 'prod-americano', 1, 12000, 0, '2026-03-03T12:23:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3076-4', 'hist-ticket-124-3076', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T12:23:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3076', 'hist-ticket-124-3076', 'cash', 55000, 'completed', '2026-03-03T12:23:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3077', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-03T16:04:52.000Z', '2026-03-03T16:04:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3077-1', 'hist-ticket-124-3077', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T16:04:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3077-2', 'hist-ticket-124-3077', 'prod-americano', 1, 12000, 0, '2026-03-03T16:04:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3077', 'hist-ticket-124-3077', 'cash', 26500, 'completed', '2026-03-03T16:04:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3078', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-03-03T11:47:11.000Z', '2026-03-03T11:47:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3078-1', 'hist-ticket-124-3078', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T11:47:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3078-2', 'hist-ticket-124-3078', 'prod-latte', 1, 15000, 0, '2026-03-03T11:47:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3078-3', 'hist-ticket-124-3078', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T11:47:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3078', 'hist-ticket-124-3078', 'cash', 44000, 'completed', '2026-03-03T11:47:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3079', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-03T13:59:39.000Z', '2026-03-03T13:59:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3079-1', 'hist-ticket-124-3079', 'prod-latte', 1, 15000, 0, '2026-03-03T13:59:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3079', 'hist-ticket-124-3079', 'cash', 15000, 'completed', '2026-03-03T13:59:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3080', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-03-03T13:11:51.000Z', '2026-03-03T13:11:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3080-1', 'hist-ticket-124-3080', 'prod-mocha', 1, 16500, 0, '2026-03-03T13:11:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3080-2', 'hist-ticket-124-3080', 'prod-mocha', 1, 16500, 0, '2026-03-03T13:11:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3080', 'hist-ticket-124-3080', 'cash', 33000, 'completed', '2026-03-03T13:11:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3081', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-03T11:08:08.000Z', '2026-03-03T11:08:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3081-1', 'hist-ticket-124-3081', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T11:08:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3081', 'hist-ticket-124-3081', 'cash', 14500, 'completed', '2026-03-03T11:08:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3082', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-03T13:05:18.000Z', '2026-03-03T13:05:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3082-1', 'hist-ticket-124-3082', 'prod-latte', 1, 15000, 0, '2026-03-03T13:05:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3082-2', 'hist-ticket-124-3082', 'prod-latte', 1, 15000, 0, '2026-03-03T13:05:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3082-3', 'hist-ticket-124-3082', 'prod-mocha', 1, 16500, 0, '2026-03-03T13:05:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3082-4', 'hist-ticket-124-3082', 'prod-mocha', 1, 16500, 0, '2026-03-03T13:05:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3082', 'hist-ticket-124-3082', 'cash', 63000, 'completed', '2026-03-03T13:05:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3083', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-03T17:47:43.000Z', '2026-03-03T17:47:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3083-1', 'hist-ticket-124-3083', 'prod-mocha', 1, 16500, 0, '2026-03-03T17:47:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3083-2', 'hist-ticket-124-3083', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T17:47:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3083-3', 'hist-ticket-124-3083', 'prod-americano', 1, 12000, 0, '2026-03-03T17:47:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3083-4', 'hist-ticket-124-3083', 'prod-americano', 1, 12000, 0, '2026-03-03T17:47:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3083', 'hist-ticket-124-3083', 'cash', 55000, 'completed', '2026-03-03T17:47:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3084', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-03T15:33:28.000Z', '2026-03-03T15:33:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3084-1', 'hist-ticket-124-3084', 'prod-latte', 1, 15000, 0, '2026-03-03T15:33:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3084-2', 'hist-ticket-124-3084', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T15:33:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3084-3', 'hist-ticket-124-3084', 'prod-latte', 1, 15000, 0, '2026-03-03T15:33:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3084-4', 'hist-ticket-124-3084', 'prod-americano', 1, 12000, 0, '2026-03-03T15:33:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3084', 'hist-ticket-124-3084', 'cash', 56500, 'completed', '2026-03-03T15:33:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3085', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-03-03T19:03:33.000Z', '2026-03-03T19:03:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3085-1', 'hist-ticket-124-3085', 'prod-mocha', 1, 16500, 0, '2026-03-03T19:03:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3085', 'hist-ticket-124-3085', 'cash', 16500, 'completed', '2026-03-03T19:03:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3086', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-03-03T08:22:24.000Z', '2026-03-03T08:22:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3086-1', 'hist-ticket-124-3086', 'prod-latte', 1, 15000, 0, '2026-03-03T08:22:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3086', 'hist-ticket-124-3086', 'cash', 15000, 'completed', '2026-03-03T08:22:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3087', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-03-03T10:48:30.000Z', '2026-03-03T10:48:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3087-1', 'hist-ticket-124-3087', 'prod-latte', 1, 15000, 0, '2026-03-03T10:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3087-2', 'hist-ticket-124-3087', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T10:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3087-3', 'hist-ticket-124-3087', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T10:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3087-4', 'hist-ticket-124-3087', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T10:48:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3087', 'hist-ticket-124-3087', 'cash', 58500, 'completed', '2026-03-03T10:48:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3088', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-03-03T09:44:42.000Z', '2026-03-03T09:44:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3088-1', 'hist-ticket-124-3088', 'prod-americano', 1, 12000, 0, '2026-03-03T09:44:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3088-2', 'hist-ticket-124-3088', 'prod-mocha', 1, 16500, 0, '2026-03-03T09:44:42.000Z');