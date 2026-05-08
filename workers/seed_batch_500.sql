INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-113', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-03T18:56:46.000Z', '2025-11-03T18:56:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-113-1', 'hist-ticket-4-113', 'prod-mocha', 1, 16500, 0, '2025-11-03T18:56:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-113', 'hist-ticket-4-113', 'cash', 16500, 'completed', '2025-11-03T18:56:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-114', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-11-03T17:11:33.000Z', '2025-11-03T17:11:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-114-1', 'hist-ticket-4-114', 'prod-mocha', 1, 16500, 0, '2025-11-03T17:11:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-114', 'hist-ticket-4-114', 'cash', 16500, 'completed', '2025-11-03T17:11:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-115', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-03T12:49:19.000Z', '2025-11-03T12:49:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-115-1', 'hist-ticket-4-115', 'prod-americano', 1, 12000, 0, '2025-11-03T12:49:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-115', 'hist-ticket-4-115', 'cash', 12000, 'completed', '2025-11-03T12:49:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-116', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-11-03T17:28:11.000Z', '2025-11-03T17:28:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-116-1', 'hist-ticket-4-116', 'prod-mocha', 1, 16500, 0, '2025-11-03T17:28:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-116', 'hist-ticket-4-116', 'cash', 16500, 'completed', '2025-11-03T17:28:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-117', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-03T17:40:50.000Z', '2025-11-03T17:40:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-117-1', 'hist-ticket-4-117', 'prod-latte', 1, 15000, 0, '2025-11-03T17:40:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-117', 'hist-ticket-4-117', 'cash', 15000, 'completed', '2025-11-03T17:40:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-118', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-03T12:46:54.000Z', '2025-11-03T12:46:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-118-1', 'hist-ticket-4-118', 'prod-mocha', 1, 16500, 0, '2025-11-03T12:46:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-118', 'hist-ticket-4-118', 'cash', 16500, 'completed', '2025-11-03T12:46:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-119', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-03T10:15:05.000Z', '2025-11-03T10:15:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-119-1', 'hist-ticket-4-119', 'prod-mocha', 1, 16500, 0, '2025-11-03T10:15:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-119-2', 'hist-ticket-4-119', 'prod-americano', 1, 12000, 0, '2025-11-03T10:15:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-119-3', 'hist-ticket-4-119', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T10:15:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-119', 'hist-ticket-4-119', 'cash', 43000, 'completed', '2025-11-03T10:15:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-120', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-03T09:42:21.000Z', '2025-11-03T09:42:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-120-1', 'hist-ticket-4-120', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T09:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-120-2', 'hist-ticket-4-120', 'prod-americano', 1, 12000, 0, '2025-11-03T09:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-120-3', 'hist-ticket-4-120', 'prod-latte', 1, 15000, 0, '2025-11-03T09:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-120-4', 'hist-ticket-4-120', 'prod-americano', 1, 12000, 0, '2025-11-03T09:42:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-120', 'hist-ticket-4-120', 'cash', 53500, 'completed', '2025-11-03T09:42:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-121', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-03T14:11:05.000Z', '2025-11-03T14:11:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-121-1', 'hist-ticket-4-121', 'prod-mocha', 1, 16500, 0, '2025-11-03T14:11:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-121-2', 'hist-ticket-4-121', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T14:11:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-121-3', 'hist-ticket-4-121', 'prod-americano', 1, 12000, 0, '2025-11-03T14:11:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-121', 'hist-ticket-4-121', 'cash', 43000, 'completed', '2025-11-03T14:11:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-122', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-03T19:45:38.000Z', '2025-11-03T19:45:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-122-1', 'hist-ticket-4-122', 'prod-mocha', 1, 16500, 0, '2025-11-03T19:45:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-122-2', 'hist-ticket-4-122', 'prod-latte', 1, 15000, 0, '2025-11-03T19:45:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-122-3', 'hist-ticket-4-122', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T19:45:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-122-4', 'hist-ticket-4-122', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T19:45:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-122', 'hist-ticket-4-122', 'cash', 60500, 'completed', '2025-11-03T19:45:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-123', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-11-03T09:27:37.000Z', '2025-11-03T09:27:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-123-1', 'hist-ticket-4-123', 'prod-mocha', 1, 16500, 0, '2025-11-03T09:27:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-123-2', 'hist-ticket-4-123', 'prod-americano', 1, 12000, 0, '2025-11-03T09:27:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-123-3', 'hist-ticket-4-123', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T09:27:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-123', 'hist-ticket-4-123', 'cash', 43000, 'completed', '2025-11-03T09:27:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-124', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-11-03T19:54:07.000Z', '2025-11-03T19:54:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-124-1', 'hist-ticket-4-124', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T19:54:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-124-2', 'hist-ticket-4-124', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T19:54:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-124', 'hist-ticket-4-124', 'cash', 29000, 'completed', '2025-11-03T19:54:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-125', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2025-11-03T13:27:17.000Z', '2025-11-03T13:27:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-125-1', 'hist-ticket-4-125', 'prod-americano', 1, 12000, 0, '2025-11-03T13:27:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-125-2', 'hist-ticket-4-125', 'prod-americano', 1, 12000, 0, '2025-11-03T13:27:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-125-3', 'hist-ticket-4-125', 'prod-mocha', 1, 16500, 0, '2025-11-03T13:27:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-125', 'hist-ticket-4-125', 'cash', 40500, 'completed', '2025-11-03T13:27:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-126', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-04T13:13:11.000Z', '2025-11-04T13:13:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-126-1', 'hist-ticket-5-126', 'prod-mocha', 1, 16500, 0, '2025-11-04T13:13:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-126', 'hist-ticket-5-126', 'cash', 16500, 'completed', '2025-11-04T13:13:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-127', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-04T18:27:36.000Z', '2025-11-04T18:27:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-127-1', 'hist-ticket-5-127', 'prod-americano', 1, 12000, 0, '2025-11-04T18:27:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-127', 'hist-ticket-5-127', 'cash', 12000, 'completed', '2025-11-04T18:27:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-128', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-04T14:33:38.000Z', '2025-11-04T14:33:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-128-1', 'hist-ticket-5-128', 'prod-latte', 1, 15000, 0, '2025-11-04T14:33:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-128-2', 'hist-ticket-5-128', 'prod-mocha', 1, 16500, 0, '2025-11-04T14:33:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-128', 'hist-ticket-5-128', 'cash', 31500, 'completed', '2025-11-04T14:33:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-129', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-04T13:15:42.000Z', '2025-11-04T13:15:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-129-1', 'hist-ticket-5-129', 'prod-americano', 1, 12000, 0, '2025-11-04T13:15:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-129-2', 'hist-ticket-5-129', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T13:15:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-129', 'hist-ticket-5-129', 'cash', 26500, 'completed', '2025-11-04T13:15:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-130', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-11-04T17:42:34.000Z', '2025-11-04T17:42:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-130-1', 'hist-ticket-5-130', 'prod-mocha', 1, 16500, 0, '2025-11-04T17:42:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-130', 'hist-ticket-5-130', 'cash', 16500, 'completed', '2025-11-04T17:42:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-131', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-04T16:56:19.000Z', '2025-11-04T16:56:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-131-1', 'hist-ticket-5-131', 'prod-latte', 1, 15000, 0, '2025-11-04T16:56:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-131', 'hist-ticket-5-131', 'cash', 15000, 'completed', '2025-11-04T16:56:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-132', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-04T15:07:15.000Z', '2025-11-04T15:07:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-132-1', 'hist-ticket-5-132', 'prod-americano', 1, 12000, 0, '2025-11-04T15:07:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-132-2', 'hist-ticket-5-132', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T15:07:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-132', 'hist-ticket-5-132', 'cash', 26500, 'completed', '2025-11-04T15:07:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-133', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-04T13:24:18.000Z', '2025-11-04T13:24:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-133-1', 'hist-ticket-5-133', 'prod-mocha', 1, 16500, 0, '2025-11-04T13:24:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-133-2', 'hist-ticket-5-133', 'prod-mocha', 1, 16500, 0, '2025-11-04T13:24:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-133-3', 'hist-ticket-5-133', 'prod-americano', 1, 12000, 0, '2025-11-04T13:24:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-133-4', 'hist-ticket-5-133', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T13:24:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-133', 'hist-ticket-5-133', 'cash', 59500, 'completed', '2025-11-04T13:24:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-134', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-04T17:19:03.000Z', '2025-11-04T17:19:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-134-1', 'hist-ticket-5-134', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T17:19:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-134-2', 'hist-ticket-5-134', 'prod-mocha', 1, 16500, 0, '2025-11-04T17:19:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-134-3', 'hist-ticket-5-134', 'prod-latte', 1, 15000, 0, '2025-11-04T17:19:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-134', 'hist-ticket-5-134', 'cash', 46000, 'completed', '2025-11-04T17:19:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-135', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-04T11:41:37.000Z', '2025-11-04T11:41:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-135-1', 'hist-ticket-5-135', 'prod-mocha', 1, 16500, 0, '2025-11-04T11:41:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-135', 'hist-ticket-5-135', 'cash', 16500, 'completed', '2025-11-04T11:41:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-136', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-04T12:42:14.000Z', '2025-11-04T12:42:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-136-1', 'hist-ticket-5-136', 'prod-latte', 1, 15000, 0, '2025-11-04T12:42:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-136', 'hist-ticket-5-136', 'cash', 15000, 'completed', '2025-11-04T12:42:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-137', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-11-04T16:51:09.000Z', '2025-11-04T16:51:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-137-1', 'hist-ticket-5-137', 'prod-americano', 1, 12000, 0, '2025-11-04T16:51:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-137-2', 'hist-ticket-5-137', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T16:51:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-137-3', 'hist-ticket-5-137', 'prod-latte', 1, 15000, 0, '2025-11-04T16:51:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-137', 'hist-ticket-5-137', 'cash', 41500, 'completed', '2025-11-04T16:51:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-138', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-04T08:42:07.000Z', '2025-11-04T08:42:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-138-1', 'hist-ticket-5-138', 'prod-latte', 1, 15000, 0, '2025-11-04T08:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-138-2', 'hist-ticket-5-138', 'prod-mocha', 1, 16500, 0, '2025-11-04T08:42:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-138', 'hist-ticket-5-138', 'cash', 31500, 'completed', '2025-11-04T08:42:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-139', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-04T10:06:21.000Z', '2025-11-04T10:06:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-139-1', 'hist-ticket-5-139', 'prod-latte', 1, 15000, 0, '2025-11-04T10:06:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-139', 'hist-ticket-5-139', 'cash', 15000, 'completed', '2025-11-04T10:06:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-140', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2025-11-04T13:37:05.000Z', '2025-11-04T13:37:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-140-1', 'hist-ticket-5-140', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T13:37:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-140-2', 'hist-ticket-5-140', 'prod-mocha', 1, 16500, 0, '2025-11-04T13:37:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-140-3', 'hist-ticket-5-140', 'prod-americano', 1, 12000, 0, '2025-11-04T13:37:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-140-4', 'hist-ticket-5-140', 'prod-mocha', 1, 16500, 0, '2025-11-04T13:37:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-140', 'hist-ticket-5-140', 'cash', 59500, 'completed', '2025-11-04T13:37:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-141', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2025-11-04T16:03:31.000Z', '2025-11-04T16:03:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-141-1', 'hist-ticket-5-141', 'prod-americano', 1, 12000, 0, '2025-11-04T16:03:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-141-2', 'hist-ticket-5-141', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T16:03:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-141', 'hist-ticket-5-141', 'cash', 26500, 'completed', '2025-11-04T16:03:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-142', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-04T17:57:01.000Z', '2025-11-04T17:57:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-142-1', 'hist-ticket-5-142', 'prod-latte', 1, 15000, 0, '2025-11-04T17:57:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-142-2', 'hist-ticket-5-142', 'prod-latte', 1, 15000, 0, '2025-11-04T17:57:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-142', 'hist-ticket-5-142', 'cash', 30000, 'completed', '2025-11-04T17:57:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-143', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-04T19:40:30.000Z', '2025-11-04T19:40:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-143-1', 'hist-ticket-5-143', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T19:40:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-143-2', 'hist-ticket-5-143', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T19:40:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-143', 'hist-ticket-5-143', 'cash', 29000, 'completed', '2025-11-04T19:40:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-144', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-11-04T17:48:15.000Z', '2025-11-04T17:48:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-144-1', 'hist-ticket-5-144', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T17:48:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-144-2', 'hist-ticket-5-144', 'prod-mocha', 1, 16500, 0, '2025-11-04T17:48:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-144-3', 'hist-ticket-5-144', 'prod-latte', 1, 15000, 0, '2025-11-04T17:48:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-144', 'hist-ticket-5-144', 'cash', 46000, 'completed', '2025-11-04T17:48:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-145', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-04T10:59:43.000Z', '2025-11-04T10:59:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-145-1', 'hist-ticket-5-145', 'prod-latte', 1, 15000, 0, '2025-11-04T10:59:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-145-2', 'hist-ticket-5-145', 'prod-mocha', 1, 16500, 0, '2025-11-04T10:59:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-145-3', 'hist-ticket-5-145', 'prod-mocha', 1, 16500, 0, '2025-11-04T10:59:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-145-4', 'hist-ticket-5-145', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T10:59:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-145', 'hist-ticket-5-145', 'cash', 62500, 'completed', '2025-11-04T10:59:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-146', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-04T15:18:42.000Z', '2025-11-04T15:18:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-146-1', 'hist-ticket-5-146', 'prod-americano', 1, 12000, 0, '2025-11-04T15:18:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-146', 'hist-ticket-5-146', 'cash', 12000, 'completed', '2025-11-04T15:18:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-147', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-04T13:56:13.000Z', '2025-11-04T13:56:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-147-1', 'hist-ticket-5-147', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T13:56:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-147-2', 'hist-ticket-5-147', 'prod-americano', 1, 12000, 0, '2025-11-04T13:56:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-147-3', 'hist-ticket-5-147', 'prod-latte', 1, 15000, 0, '2025-11-04T13:56:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-147-4', 'hist-ticket-5-147', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T13:56:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-147', 'hist-ticket-5-147', 'cash', 56000, 'completed', '2025-11-04T13:56:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-148', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-11-04T11:25:09.000Z', '2025-11-04T11:25:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-148-1', 'hist-ticket-5-148', 'prod-cappuccino', 1, 14500, 0, '2025-11-04T11:25:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-148-2', 'hist-ticket-5-148', 'prod-latte', 1, 15000, 0, '2025-11-04T11:25:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-148-3', 'hist-ticket-5-148', 'prod-mocha', 1, 16500, 0, '2025-11-04T11:25:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-148-4', 'hist-ticket-5-148', 'prod-americano', 1, 12000, 0, '2025-11-04T11:25:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-148', 'hist-ticket-5-148', 'cash', 58000, 'completed', '2025-11-04T11:25:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-5-149', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-04T14:26:09.000Z', '2025-11-04T14:26:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-149-1', 'hist-ticket-5-149', 'prod-latte', 1, 15000, 0, '2025-11-04T14:26:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-149-2', 'hist-ticket-5-149', 'prod-mocha', 1, 16500, 0, '2025-11-04T14:26:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-5-149-3', 'hist-ticket-5-149', 'prod-mocha', 1, 16500, 0, '2025-11-04T14:26:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-5-149', 'hist-ticket-5-149', 'cash', 48000, 'completed', '2025-11-04T14:26:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-150', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-11-05T19:21:56.000Z', '2025-11-05T19:21:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-150-1', 'hist-ticket-6-150', 'prod-mocha', 1, 16500, 0, '2025-11-05T19:21:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-150-2', 'hist-ticket-6-150', 'prod-latte', 1, 15000, 0, '2025-11-05T19:21:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-150', 'hist-ticket-6-150', 'cash', 31500, 'completed', '2025-11-05T19:21:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-151', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-05T13:35:37.000Z', '2025-11-05T13:35:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-151-1', 'hist-ticket-6-151', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T13:35:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-151-2', 'hist-ticket-6-151', 'prod-latte', 1, 15000, 0, '2025-11-05T13:35:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-151-3', 'hist-ticket-6-151', 'prod-mocha', 1, 16500, 0, '2025-11-05T13:35:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-151-4', 'hist-ticket-6-151', 'prod-latte', 1, 15000, 0, '2025-11-05T13:35:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-151', 'hist-ticket-6-151', 'cash', 61000, 'completed', '2025-11-05T13:35:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-152', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-05T14:14:21.000Z', '2025-11-05T14:14:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-152-1', 'hist-ticket-6-152', 'prod-mocha', 1, 16500, 0, '2025-11-05T14:14:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-152-2', 'hist-ticket-6-152', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T14:14:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-152', 'hist-ticket-6-152', 'cash', 31000, 'completed', '2025-11-05T14:14:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-153', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-05T17:42:24.000Z', '2025-11-05T17:42:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-153-1', 'hist-ticket-6-153', 'prod-latte', 1, 15000, 0, '2025-11-05T17:42:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-153', 'hist-ticket-6-153', 'cash', 15000, 'completed', '2025-11-05T17:42:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-154', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2025-11-05T09:33:50.000Z', '2025-11-05T09:33:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-154-1', 'hist-ticket-6-154', 'prod-mocha', 1, 16500, 0, '2025-11-05T09:33:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-154-2', 'hist-ticket-6-154', 'prod-latte', 1, 15000, 0, '2025-11-05T09:33:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-154-3', 'hist-ticket-6-154', 'prod-latte', 1, 15000, 0, '2025-11-05T09:33:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-154-4', 'hist-ticket-6-154', 'prod-latte', 1, 15000, 0, '2025-11-05T09:33:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-154', 'hist-ticket-6-154', 'cash', 61500, 'completed', '2025-11-05T09:33:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-155', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2025-11-05T12:30:51.000Z', '2025-11-05T12:30:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-155-1', 'hist-ticket-6-155', 'prod-mocha', 1, 16500, 0, '2025-11-05T12:30:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-155-2', 'hist-ticket-6-155', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T12:30:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-155', 'hist-ticket-6-155', 'cash', 31000, 'completed', '2025-11-05T12:30:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-156', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-05T15:49:53.000Z', '2025-11-05T15:49:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-156-1', 'hist-ticket-6-156', 'prod-mocha', 1, 16500, 0, '2025-11-05T15:49:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-156-2', 'hist-ticket-6-156', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T15:49:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-156-3', 'hist-ticket-6-156', 'prod-mocha', 1, 16500, 0, '2025-11-05T15:49:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-156', 'hist-ticket-6-156', 'cash', 47500, 'completed', '2025-11-05T15:49:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-157', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-05T11:43:58.000Z', '2025-11-05T11:43:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-157-1', 'hist-ticket-6-157', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T11:43:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-157-2', 'hist-ticket-6-157', 'prod-mocha', 1, 16500, 0, '2025-11-05T11:43:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-157-3', 'hist-ticket-6-157', 'prod-americano', 1, 12000, 0, '2025-11-05T11:43:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-157-4', 'hist-ticket-6-157', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T11:43:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-157', 'hist-ticket-6-157', 'cash', 57500, 'completed', '2025-11-05T11:43:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-158', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-11-05T08:36:34.000Z', '2025-11-05T08:36:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-158-1', 'hist-ticket-6-158', 'prod-americano', 1, 12000, 0, '2025-11-05T08:36:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-158-2', 'hist-ticket-6-158', 'prod-latte', 1, 15000, 0, '2025-11-05T08:36:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-158-3', 'hist-ticket-6-158', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T08:36:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-158-4', 'hist-ticket-6-158', 'prod-americano', 1, 12000, 0, '2025-11-05T08:36:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-158', 'hist-ticket-6-158', 'cash', 53500, 'completed', '2025-11-05T08:36:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-159', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-11-05T14:50:58.000Z', '2025-11-05T14:50:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-159-1', 'hist-ticket-6-159', 'prod-americano', 1, 12000, 0, '2025-11-05T14:50:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-159-2', 'hist-ticket-6-159', 'prod-americano', 1, 12000, 0, '2025-11-05T14:50:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-159-3', 'hist-ticket-6-159', 'prod-americano', 1, 12000, 0, '2025-11-05T14:50:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-159-4', 'hist-ticket-6-159', 'prod-americano', 1, 12000, 0, '2025-11-05T14:50:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-159', 'hist-ticket-6-159', 'cash', 48000, 'completed', '2025-11-05T14:50:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-160', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-05T15:18:53.000Z', '2025-11-05T15:18:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-160-1', 'hist-ticket-6-160', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T15:18:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-160-2', 'hist-ticket-6-160', 'prod-americano', 1, 12000, 0, '2025-11-05T15:18:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-160', 'hist-ticket-6-160', 'cash', 26500, 'completed', '2025-11-05T15:18:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-161', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-11-05T14:44:13.000Z', '2025-11-05T14:44:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-161-1', 'hist-ticket-6-161', 'prod-latte', 1, 15000, 0, '2025-11-05T14:44:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-161-2', 'hist-ticket-6-161', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T14:44:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-161', 'hist-ticket-6-161', 'cash', 29500, 'completed', '2025-11-05T14:44:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-162', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-05T13:09:37.000Z', '2025-11-05T13:09:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-162-1', 'hist-ticket-6-162', 'prod-latte', 1, 15000, 0, '2025-11-05T13:09:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-162-2', 'hist-ticket-6-162', 'prod-mocha', 1, 16500, 0, '2025-11-05T13:09:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-162-3', 'hist-ticket-6-162', 'prod-americano', 1, 12000, 0, '2025-11-05T13:09:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-162', 'hist-ticket-6-162', 'cash', 43500, 'completed', '2025-11-05T13:09:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-163', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-05T19:24:08.000Z', '2025-11-05T19:24:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-163-1', 'hist-ticket-6-163', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T19:24:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-163-2', 'hist-ticket-6-163', 'prod-americano', 1, 12000, 0, '2025-11-05T19:24:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-163-3', 'hist-ticket-6-163', 'prod-americano', 1, 12000, 0, '2025-11-05T19:24:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-163-4', 'hist-ticket-6-163', 'prod-latte', 1, 15000, 0, '2025-11-05T19:24:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-163', 'hist-ticket-6-163', 'cash', 53500, 'completed', '2025-11-05T19:24:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-164', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-05T11:34:15.000Z', '2025-11-05T11:34:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-164-1', 'hist-ticket-6-164', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T11:34:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-164-2', 'hist-ticket-6-164', 'prod-latte', 1, 15000, 0, '2025-11-05T11:34:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-164-3', 'hist-ticket-6-164', 'prod-mocha', 1, 16500, 0, '2025-11-05T11:34:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-164', 'hist-ticket-6-164', 'cash', 46000, 'completed', '2025-11-05T11:34:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-6-165', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-05T09:33:48.000Z', '2025-11-05T09:33:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-165-1', 'hist-ticket-6-165', 'prod-cappuccino', 1, 14500, 0, '2025-11-05T09:33:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-165-2', 'hist-ticket-6-165', 'prod-americano', 1, 12000, 0, '2025-11-05T09:33:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-6-165-3', 'hist-ticket-6-165', 'prod-mocha', 1, 16500, 0, '2025-11-05T09:33:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-6-165', 'hist-ticket-6-165', 'cash', 43000, 'completed', '2025-11-05T09:33:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-166', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-06T15:40:57.000Z', '2025-11-06T15:40:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-166-1', 'hist-ticket-7-166', 'prod-latte', 1, 15000, 0, '2025-11-06T15:40:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-166', 'hist-ticket-7-166', 'cash', 15000, 'completed', '2025-11-06T15:40:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-167', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-11-06T16:24:52.000Z', '2025-11-06T16:24:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-167-1', 'hist-ticket-7-167', 'prod-americano', 1, 12000, 0, '2025-11-06T16:24:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-167-2', 'hist-ticket-7-167', 'prod-latte', 1, 15000, 0, '2025-11-06T16:24:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-167-3', 'hist-ticket-7-167', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T16:24:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-167', 'hist-ticket-7-167', 'cash', 41500, 'completed', '2025-11-06T16:24:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-168', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-06T13:45:36.000Z', '2025-11-06T13:45:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-168-1', 'hist-ticket-7-168', 'prod-americano', 1, 12000, 0, '2025-11-06T13:45:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-168-2', 'hist-ticket-7-168', 'prod-mocha', 1, 16500, 0, '2025-11-06T13:45:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-168-3', 'hist-ticket-7-168', 'prod-mocha', 1, 16500, 0, '2025-11-06T13:45:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-168', 'hist-ticket-7-168', 'cash', 45000, 'completed', '2025-11-06T13:45:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-169', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-11-06T10:50:28.000Z', '2025-11-06T10:50:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-169-1', 'hist-ticket-7-169', 'prod-latte', 1, 15000, 0, '2025-11-06T10:50:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-169-2', 'hist-ticket-7-169', 'prod-americano', 1, 12000, 0, '2025-11-06T10:50:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-169-3', 'hist-ticket-7-169', 'prod-mocha', 1, 16500, 0, '2025-11-06T10:50:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-169-4', 'hist-ticket-7-169', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T10:50:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-169', 'hist-ticket-7-169', 'cash', 58000, 'completed', '2025-11-06T10:50:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-170', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-06T08:23:58.000Z', '2025-11-06T08:23:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-170-1', 'hist-ticket-7-170', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T08:23:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-170', 'hist-ticket-7-170', 'cash', 14500, 'completed', '2025-11-06T08:23:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-171', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-06T11:49:05.000Z', '2025-11-06T11:49:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-171-1', 'hist-ticket-7-171', 'prod-mocha', 1, 16500, 0, '2025-11-06T11:49:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-171', 'hist-ticket-7-171', 'cash', 16500, 'completed', '2025-11-06T11:49:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-172', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-06T15:54:09.000Z', '2025-11-06T15:54:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-172-1', 'hist-ticket-7-172', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T15:54:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-172-2', 'hist-ticket-7-172', 'prod-americano', 1, 12000, 0, '2025-11-06T15:54:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-172-3', 'hist-ticket-7-172', 'prod-americano', 1, 12000, 0, '2025-11-06T15:54:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-172', 'hist-ticket-7-172', 'cash', 38500, 'completed', '2025-11-06T15:54:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-173', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-06T12:58:56.000Z', '2025-11-06T12:58:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-173-1', 'hist-ticket-7-173', 'prod-mocha', 1, 16500, 0, '2025-11-06T12:58:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-173', 'hist-ticket-7-173', 'cash', 16500, 'completed', '2025-11-06T12:58:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-174', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-06T15:52:10.000Z', '2025-11-06T15:52:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-174-1', 'hist-ticket-7-174', 'prod-mocha', 1, 16500, 0, '2025-11-06T15:52:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-174-2', 'hist-ticket-7-174', 'prod-mocha', 1, 16500, 0, '2025-11-06T15:52:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-174-3', 'hist-ticket-7-174', 'prod-mocha', 1, 16500, 0, '2025-11-06T15:52:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-174', 'hist-ticket-7-174', 'cash', 49500, 'completed', '2025-11-06T15:52:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-175', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-06T08:59:45.000Z', '2025-11-06T08:59:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-175-1', 'hist-ticket-7-175', 'prod-americano', 1, 12000, 0, '2025-11-06T08:59:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-175-2', 'hist-ticket-7-175', 'prod-latte', 1, 15000, 0, '2025-11-06T08:59:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-175-3', 'hist-ticket-7-175', 'prod-americano', 1, 12000, 0, '2025-11-06T08:59:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-175', 'hist-ticket-7-175', 'cash', 39000, 'completed', '2025-11-06T08:59:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-176', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-06T17:07:51.000Z', '2025-11-06T17:07:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-176-1', 'hist-ticket-7-176', 'prod-latte', 1, 15000, 0, '2025-11-06T17:07:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-176', 'hist-ticket-7-176', 'cash', 15000, 'completed', '2025-11-06T17:07:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-177', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-06T14:05:26.000Z', '2025-11-06T14:05:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-177-1', 'hist-ticket-7-177', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T14:05:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-177', 'hist-ticket-7-177', 'cash', 14500, 'completed', '2025-11-06T14:05:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-178', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2025-11-06T15:56:14.000Z', '2025-11-06T15:56:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-178-1', 'hist-ticket-7-178', 'prod-latte', 1, 15000, 0, '2025-11-06T15:56:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-178-2', 'hist-ticket-7-178', 'prod-latte', 1, 15000, 0, '2025-11-06T15:56:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-178-3', 'hist-ticket-7-178', 'prod-latte', 1, 15000, 0, '2025-11-06T15:56:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-178', 'hist-ticket-7-178', 'cash', 45000, 'completed', '2025-11-06T15:56:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-179', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-06T15:43:43.000Z', '2025-11-06T15:43:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-179-1', 'hist-ticket-7-179', 'prod-mocha', 1, 16500, 0, '2025-11-06T15:43:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-179-2', 'hist-ticket-7-179', 'prod-americano', 1, 12000, 0, '2025-11-06T15:43:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-179', 'hist-ticket-7-179', 'cash', 28500, 'completed', '2025-11-06T15:43:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-180', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2025-11-06T15:35:33.000Z', '2025-11-06T15:35:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-180-1', 'hist-ticket-7-180', 'prod-mocha', 1, 16500, 0, '2025-11-06T15:35:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-180-2', 'hist-ticket-7-180', 'prod-latte', 1, 15000, 0, '2025-11-06T15:35:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-180-3', 'hist-ticket-7-180', 'prod-mocha', 1, 16500, 0, '2025-11-06T15:35:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-180-4', 'hist-ticket-7-180', 'prod-latte', 1, 15000, 0, '2025-11-06T15:35:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-180', 'hist-ticket-7-180', 'cash', 63000, 'completed', '2025-11-06T15:35:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-181', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-06T15:19:35.000Z', '2025-11-06T15:19:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-181-1', 'hist-ticket-7-181', 'prod-latte', 1, 15000, 0, '2025-11-06T15:19:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-181-2', 'hist-ticket-7-181', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T15:19:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-181-3', 'hist-ticket-7-181', 'prod-mocha', 1, 16500, 0, '2025-11-06T15:19:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-181', 'hist-ticket-7-181', 'cash', 46000, 'completed', '2025-11-06T15:19:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-182', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-06T13:48:32.000Z', '2025-11-06T13:48:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-182-1', 'hist-ticket-7-182', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T13:48:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-182-2', 'hist-ticket-7-182', 'prod-latte', 1, 15000, 0, '2025-11-06T13:48:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-182-3', 'hist-ticket-7-182', 'prod-mocha', 1, 16500, 0, '2025-11-06T13:48:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-182-4', 'hist-ticket-7-182', 'prod-mocha', 1, 16500, 0, '2025-11-06T13:48:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-182', 'hist-ticket-7-182', 'cash', 62500, 'completed', '2025-11-06T13:48:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-183', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-06T18:02:40.000Z', '2025-11-06T18:02:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-183-1', 'hist-ticket-7-183', 'prod-americano', 1, 12000, 0, '2025-11-06T18:02:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-183-2', 'hist-ticket-7-183', 'prod-americano', 1, 12000, 0, '2025-11-06T18:02:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-183', 'hist-ticket-7-183', 'cash', 24000, 'completed', '2025-11-06T18:02:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-184', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2025-11-06T18:32:00.000Z', '2025-11-06T18:32:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-184-1', 'hist-ticket-7-184', 'prod-americano', 1, 12000, 0, '2025-11-06T18:32:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-184-2', 'hist-ticket-7-184', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T18:32:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-184-3', 'hist-ticket-7-184', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T18:32:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-184', 'hist-ticket-7-184', 'cash', 41000, 'completed', '2025-11-06T18:32:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-185', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-11-06T15:03:49.000Z', '2025-11-06T15:03:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-185-1', 'hist-ticket-7-185', 'prod-mocha', 1, 16500, 0, '2025-11-06T15:03:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-185-2', 'hist-ticket-7-185', 'prod-latte', 1, 15000, 0, '2025-11-06T15:03:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-185-3', 'hist-ticket-7-185', 'prod-americano', 1, 12000, 0, '2025-11-06T15:03:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-185', 'hist-ticket-7-185', 'cash', 43500, 'completed', '2025-11-06T15:03:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-186', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-06T09:13:37.000Z', '2025-11-06T09:13:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-186-1', 'hist-ticket-7-186', 'prod-latte', 1, 15000, 0, '2025-11-06T09:13:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-186-2', 'hist-ticket-7-186', 'prod-latte', 1, 15000, 0, '2025-11-06T09:13:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-186-3', 'hist-ticket-7-186', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T09:13:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-186-4', 'hist-ticket-7-186', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T09:13:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-186', 'hist-ticket-7-186', 'cash', 59000, 'completed', '2025-11-06T09:13:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-187', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2025-11-06T13:03:49.000Z', '2025-11-06T13:03:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-187-1', 'hist-ticket-7-187', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T13:03:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-187-2', 'hist-ticket-7-187', 'prod-latte', 1, 15000, 0, '2025-11-06T13:03:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-187-3', 'hist-ticket-7-187', 'prod-americano', 1, 12000, 0, '2025-11-06T13:03:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-187', 'hist-ticket-7-187', 'cash', 41500, 'completed', '2025-11-06T13:03:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-188', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-06T18:01:32.000Z', '2025-11-06T18:01:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-188-1', 'hist-ticket-7-188', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T18:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-188-2', 'hist-ticket-7-188', 'prod-americano', 1, 12000, 0, '2025-11-06T18:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-188-3', 'hist-ticket-7-188', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T18:01:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-188', 'hist-ticket-7-188', 'cash', 41000, 'completed', '2025-11-06T18:01:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-7-189', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-11-06T11:15:19.000Z', '2025-11-06T11:15:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-189-1', 'hist-ticket-7-189', 'prod-mocha', 1, 16500, 0, '2025-11-06T11:15:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-189-2', 'hist-ticket-7-189', 'prod-latte', 1, 15000, 0, '2025-11-06T11:15:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-189-3', 'hist-ticket-7-189', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T11:15:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-7-189-4', 'hist-ticket-7-189', 'prod-cappuccino', 1, 14500, 0, '2025-11-06T11:15:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-7-189', 'hist-ticket-7-189', 'cash', 60500, 'completed', '2025-11-06T11:15:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-190', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-07T15:58:44.000Z', '2025-11-07T15:58:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-190-1', 'hist-ticket-8-190', 'prod-americano', 1, 12000, 0, '2025-11-07T15:58:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-190-2', 'hist-ticket-8-190', 'prod-mocha', 1, 16500, 0, '2025-11-07T15:58:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-190-3', 'hist-ticket-8-190', 'prod-cappuccino', 1, 14500, 0, '2025-11-07T15:58:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-190-4', 'hist-ticket-8-190', 'prod-americano', 1, 12000, 0, '2025-11-07T15:58:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-190', 'hist-ticket-8-190', 'cash', 55000, 'completed', '2025-11-07T15:58:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-191', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2025-11-07T10:41:09.000Z', '2025-11-07T10:41:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-191-1', 'hist-ticket-8-191', 'prod-americano', 1, 12000, 0, '2025-11-07T10:41:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-191-2', 'hist-ticket-8-191', 'prod-americano', 1, 12000, 0, '2025-11-07T10:41:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-191', 'hist-ticket-8-191', 'cash', 24000, 'completed', '2025-11-07T10:41:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-192', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-07T09:36:14.000Z', '2025-11-07T09:36:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-192-1', 'hist-ticket-8-192', 'prod-latte', 1, 15000, 0, '2025-11-07T09:36:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-192-2', 'hist-ticket-8-192', 'prod-cappuccino', 1, 14500, 0, '2025-11-07T09:36:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-192-3', 'hist-ticket-8-192', 'prod-americano', 1, 12000, 0, '2025-11-07T09:36:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-192', 'hist-ticket-8-192', 'cash', 41500, 'completed', '2025-11-07T09:36:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-193', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2025-11-07T13:17:46.000Z', '2025-11-07T13:17:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-193-1', 'hist-ticket-8-193', 'prod-mocha', 1, 16500, 0, '2025-11-07T13:17:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-193-2', 'hist-ticket-8-193', 'prod-americano', 1, 12000, 0, '2025-11-07T13:17:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-193-3', 'hist-ticket-8-193', 'prod-latte', 1, 15000, 0, '2025-11-07T13:17:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-193-4', 'hist-ticket-8-193', 'prod-americano', 1, 12000, 0, '2025-11-07T13:17:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-193', 'hist-ticket-8-193', 'cash', 55500, 'completed', '2025-11-07T13:17:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-194', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-07T18:03:31.000Z', '2025-11-07T18:03:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-194-1', 'hist-ticket-8-194', 'prod-latte', 1, 15000, 0, '2025-11-07T18:03:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-194-2', 'hist-ticket-8-194', 'prod-americano', 1, 12000, 0, '2025-11-07T18:03:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-194', 'hist-ticket-8-194', 'cash', 27000, 'completed', '2025-11-07T18:03:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-195', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-07T19:24:09.000Z', '2025-11-07T19:24:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-195-1', 'hist-ticket-8-195', 'prod-latte', 1, 15000, 0, '2025-11-07T19:24:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-195-2', 'hist-ticket-8-195', 'prod-americano', 1, 12000, 0, '2025-11-07T19:24:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-195-3', 'hist-ticket-8-195', 'prod-mocha', 1, 16500, 0, '2025-11-07T19:24:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-195', 'hist-ticket-8-195', 'cash', 43500, 'completed', '2025-11-07T19:24:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-196', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-11-07T16:22:31.000Z', '2025-11-07T16:22:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-196-1', 'hist-ticket-8-196', 'prod-mocha', 1, 16500, 0, '2025-11-07T16:22:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-196-2', 'hist-ticket-8-196', 'prod-latte', 1, 15000, 0, '2025-11-07T16:22:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-196-3', 'hist-ticket-8-196', 'prod-latte', 1, 15000, 0, '2025-11-07T16:22:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-196', 'hist-ticket-8-196', 'cash', 46500, 'completed', '2025-11-07T16:22:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-197', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-07T17:49:49.000Z', '2025-11-07T17:49:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-197-1', 'hist-ticket-8-197', 'prod-cappuccino', 1, 14500, 0, '2025-11-07T17:49:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-197-2', 'hist-ticket-8-197', 'prod-cappuccino', 1, 14500, 0, '2025-11-07T17:49:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-197-3', 'hist-ticket-8-197', 'prod-cappuccino', 1, 14500, 0, '2025-11-07T17:49:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-197', 'hist-ticket-8-197', 'cash', 43500, 'completed', '2025-11-07T17:49:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-198', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-07T14:00:47.000Z', '2025-11-07T14:00:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-198-1', 'hist-ticket-8-198', 'prod-americano', 1, 12000, 0, '2025-11-07T14:00:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-198-2', 'hist-ticket-8-198', 'prod-americano', 1, 12000, 0, '2025-11-07T14:00:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-198-3', 'hist-ticket-8-198', 'prod-mocha', 1, 16500, 0, '2025-11-07T14:00:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-198', 'hist-ticket-8-198', 'cash', 40500, 'completed', '2025-11-07T14:00:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-199', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-07T16:24:27.000Z', '2025-11-07T16:24:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-199-1', 'hist-ticket-8-199', 'prod-latte', 1, 15000, 0, '2025-11-07T16:24:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-199-2', 'hist-ticket-8-199', 'prod-cappuccino', 1, 14500, 0, '2025-11-07T16:24:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-199-3', 'hist-ticket-8-199', 'prod-latte', 1, 15000, 0, '2025-11-07T16:24:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-199-4', 'hist-ticket-8-199', 'prod-mocha', 1, 16500, 0, '2025-11-07T16:24:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-199', 'hist-ticket-8-199', 'cash', 61000, 'completed', '2025-11-07T16:24:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-200', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-11-07T08:37:13.000Z', '2025-11-07T08:37:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-200-1', 'hist-ticket-8-200', 'prod-mocha', 1, 16500, 0, '2025-11-07T08:37:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-200-2', 'hist-ticket-8-200', 'prod-mocha', 1, 16500, 0, '2025-11-07T08:37:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-200-3', 'hist-ticket-8-200', 'prod-latte', 1, 15000, 0, '2025-11-07T08:37:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-200', 'hist-ticket-8-200', 'cash', 48000, 'completed', '2025-11-07T08:37:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-201', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-11-07T15:23:54.000Z', '2025-11-07T15:23:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-201-1', 'hist-ticket-8-201', 'prod-latte', 1, 15000, 0, '2025-11-07T15:23:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-201', 'hist-ticket-8-201', 'cash', 15000, 'completed', '2025-11-07T15:23:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-202', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2025-11-07T16:55:40.000Z', '2025-11-07T16:55:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-202-1', 'hist-ticket-8-202', 'prod-latte', 1, 15000, 0, '2025-11-07T16:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-202-2', 'hist-ticket-8-202', 'prod-latte', 1, 15000, 0, '2025-11-07T16:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-202-3', 'hist-ticket-8-202', 'prod-mocha', 1, 16500, 0, '2025-11-07T16:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-202-4', 'hist-ticket-8-202', 'prod-americano', 1, 12000, 0, '2025-11-07T16:55:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-202', 'hist-ticket-8-202', 'cash', 58500, 'completed', '2025-11-07T16:55:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-203', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-07T16:33:08.000Z', '2025-11-07T16:33:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-203-1', 'hist-ticket-8-203', 'prod-latte', 1, 15000, 0, '2025-11-07T16:33:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-203', 'hist-ticket-8-203', 'cash', 15000, 'completed', '2025-11-07T16:33:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-204', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-07T16:26:42.000Z', '2025-11-07T16:26:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-204-1', 'hist-ticket-8-204', 'prod-americano', 1, 12000, 0, '2025-11-07T16:26:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-204-2', 'hist-ticket-8-204', 'prod-cappuccino', 1, 14500, 0, '2025-11-07T16:26:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-204-3', 'hist-ticket-8-204', 'prod-latte', 1, 15000, 0, '2025-11-07T16:26:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-204', 'hist-ticket-8-204', 'cash', 41500, 'completed', '2025-11-07T16:26:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-205', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-07T14:29:29.000Z', '2025-11-07T14:29:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-205-1', 'hist-ticket-8-205', 'prod-mocha', 1, 16500, 0, '2025-11-07T14:29:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-205-2', 'hist-ticket-8-205', 'prod-latte', 1, 15000, 0, '2025-11-07T14:29:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-205-3', 'hist-ticket-8-205', 'prod-americano', 1, 12000, 0, '2025-11-07T14:29:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-205-4', 'hist-ticket-8-205', 'prod-mocha', 1, 16500, 0, '2025-11-07T14:29:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-205', 'hist-ticket-8-205', 'cash', 60000, 'completed', '2025-11-07T14:29:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-206', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-07T09:12:48.000Z', '2025-11-07T09:12:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-206-1', 'hist-ticket-8-206', 'prod-mocha', 1, 16500, 0, '2025-11-07T09:12:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-206-2', 'hist-ticket-8-206', 'prod-mocha', 1, 16500, 0, '2025-11-07T09:12:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-206-3', 'hist-ticket-8-206', 'prod-latte', 1, 15000, 0, '2025-11-07T09:12:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-206', 'hist-ticket-8-206', 'cash', 48000, 'completed', '2025-11-07T09:12:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-207', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-07T08:21:19.000Z', '2025-11-07T08:21:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-207-1', 'hist-ticket-8-207', 'prod-mocha', 1, 16500, 0, '2025-11-07T08:21:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-207-2', 'hist-ticket-8-207', 'prod-americano', 1, 12000, 0, '2025-11-07T08:21:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-207', 'hist-ticket-8-207', 'cash', 28500, 'completed', '2025-11-07T08:21:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-208', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-07T09:40:56.000Z', '2025-11-07T09:40:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-208-1', 'hist-ticket-8-208', 'prod-mocha', 1, 16500, 0, '2025-11-07T09:40:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-208-2', 'hist-ticket-8-208', 'prod-cappuccino', 1, 14500, 0, '2025-11-07T09:40:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-208', 'hist-ticket-8-208', 'cash', 31000, 'completed', '2025-11-07T09:40:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-8-209', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-07T17:10:53.000Z', '2025-11-07T17:10:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-209-1', 'hist-ticket-8-209', 'prod-cappuccino', 1, 14500, 0, '2025-11-07T17:10:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-209-2', 'hist-ticket-8-209', 'prod-latte', 1, 15000, 0, '2025-11-07T17:10:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-209-3', 'hist-ticket-8-209', 'prod-americano', 1, 12000, 0, '2025-11-07T17:10:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-8-209-4', 'hist-ticket-8-209', 'prod-latte', 1, 15000, 0, '2025-11-07T17:10:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-8-209', 'hist-ticket-8-209', 'cash', 56500, 'completed', '2025-11-07T17:10:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-210', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-08T08:46:32.000Z', '2025-11-08T08:46:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-210-1', 'hist-ticket-9-210', 'prod-mocha', 1, 16500, 0, '2025-11-08T08:46:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-210-2', 'hist-ticket-9-210', 'prod-latte', 1, 15000, 0, '2025-11-08T08:46:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-210-3', 'hist-ticket-9-210', 'prod-latte', 1, 15000, 0, '2025-11-08T08:46:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-210-4', 'hist-ticket-9-210', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T08:46:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-210', 'hist-ticket-9-210', 'cash', 61000, 'completed', '2025-11-08T08:46:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-211', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-08T14:32:12.000Z', '2025-11-08T14:32:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-211-1', 'hist-ticket-9-211', 'prod-mocha', 1, 16500, 0, '2025-11-08T14:32:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-211', 'hist-ticket-9-211', 'cash', 16500, 'completed', '2025-11-08T14:32:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-212', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-08T17:59:59.000Z', '2025-11-08T17:59:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-212-1', 'hist-ticket-9-212', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T17:59:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-212-2', 'hist-ticket-9-212', 'prod-mocha', 1, 16500, 0, '2025-11-08T17:59:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-212', 'hist-ticket-9-212', 'cash', 31000, 'completed', '2025-11-08T17:59:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-213', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-08T16:18:10.000Z', '2025-11-08T16:18:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-213-1', 'hist-ticket-9-213', 'prod-americano', 1, 12000, 0, '2025-11-08T16:18:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-213-2', 'hist-ticket-9-213', 'prod-americano', 1, 12000, 0, '2025-11-08T16:18:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-213-3', 'hist-ticket-9-213', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T16:18:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-213-4', 'hist-ticket-9-213', 'prod-mocha', 1, 16500, 0, '2025-11-08T16:18:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-213', 'hist-ticket-9-213', 'cash', 55000, 'completed', '2025-11-08T16:18:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-214', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-08T10:42:15.000Z', '2025-11-08T10:42:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-214-1', 'hist-ticket-9-214', 'prod-americano', 1, 12000, 0, '2025-11-08T10:42:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-214-2', 'hist-ticket-9-214', 'prod-latte', 1, 15000, 0, '2025-11-08T10:42:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-214-3', 'hist-ticket-9-214', 'prod-mocha', 1, 16500, 0, '2025-11-08T10:42:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-214-4', 'hist-ticket-9-214', 'prod-mocha', 1, 16500, 0, '2025-11-08T10:42:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-214', 'hist-ticket-9-214', 'cash', 60000, 'completed', '2025-11-08T10:42:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-215', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-08T17:09:04.000Z', '2025-11-08T17:09:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-215-1', 'hist-ticket-9-215', 'prod-latte', 1, 15000, 0, '2025-11-08T17:09:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-215-2', 'hist-ticket-9-215', 'prod-americano', 1, 12000, 0, '2025-11-08T17:09:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-215-3', 'hist-ticket-9-215', 'prod-americano', 1, 12000, 0, '2025-11-08T17:09:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-215', 'hist-ticket-9-215', 'cash', 39000, 'completed', '2025-11-08T17:09:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-216', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-08T19:22:38.000Z', '2025-11-08T19:22:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-216-1', 'hist-ticket-9-216', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T19:22:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-216-2', 'hist-ticket-9-216', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T19:22:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-216-3', 'hist-ticket-9-216', 'prod-americano', 1, 12000, 0, '2025-11-08T19:22:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-216', 'hist-ticket-9-216', 'cash', 41000, 'completed', '2025-11-08T19:22:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-217', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-08T14:42:04.000Z', '2025-11-08T14:42:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-217-1', 'hist-ticket-9-217', 'prod-latte', 1, 15000, 0, '2025-11-08T14:42:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-217-2', 'hist-ticket-9-217', 'prod-mocha', 1, 16500, 0, '2025-11-08T14:42:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-217-3', 'hist-ticket-9-217', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T14:42:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-217-4', 'hist-ticket-9-217', 'prod-cappuccino', 1, 14500, 0, '2025-11-08T14:42:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-217', 'hist-ticket-9-217', 'cash', 60500, 'completed', '2025-11-08T14:42:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-218', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-08T13:03:14.000Z', '2025-11-08T13:03:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-218-1', 'hist-ticket-9-218', 'prod-mocha', 1, 16500, 0, '2025-11-08T13:03:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-218-2', 'hist-ticket-9-218', 'prod-mocha', 1, 16500, 0, '2025-11-08T13:03:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-218-3', 'hist-ticket-9-218', 'prod-americano', 1, 12000, 0, '2025-11-08T13:03:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-218-4', 'hist-ticket-9-218', 'prod-mocha', 1, 16500, 0, '2025-11-08T13:03:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-218', 'hist-ticket-9-218', 'cash', 61500, 'completed', '2025-11-08T13:03:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-219', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-08T11:00:04.000Z', '2025-11-08T11:00:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-219-1', 'hist-ticket-9-219', 'prod-latte', 1, 15000, 0, '2025-11-08T11:00:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-219', 'hist-ticket-9-219', 'cash', 15000, 'completed', '2025-11-08T11:00:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-9-220', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-11-08T15:31:06.000Z', '2025-11-08T15:31:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-220-1', 'hist-ticket-9-220', 'prod-mocha', 1, 16500, 0, '2025-11-08T15:31:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-220-2', 'hist-ticket-9-220', 'prod-americano', 1, 12000, 0, '2025-11-08T15:31:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-220-3', 'hist-ticket-9-220', 'prod-mocha', 1, 16500, 0, '2025-11-08T15:31:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-9-220-4', 'hist-ticket-9-220', 'prod-mocha', 1, 16500, 0, '2025-11-08T15:31:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-9-220', 'hist-ticket-9-220', 'cash', 61500, 'completed', '2025-11-08T15:31:06.000Z');