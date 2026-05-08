INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1997-2', 'hist-ticket-82-1997', 'prod-mocha', 1, 16500, 0, '2026-01-20T15:11:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1997-3', 'hist-ticket-82-1997', 'prod-latte', 1, 15000, 0, '2026-01-20T15:11:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1997', 'hist-ticket-82-1997', 'cash', 46500, 'completed', '2026-01-20T15:11:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1998', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-01-20T14:08:56.000Z', '2026-01-20T14:08:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1998-1', 'hist-ticket-82-1998', 'prod-latte', 1, 15000, 0, '2026-01-20T14:08:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1998', 'hist-ticket-82-1998', 'cash', 15000, 'completed', '2026-01-20T14:08:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-1999', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-20T18:39:47.000Z', '2026-01-20T18:39:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1999-1', 'hist-ticket-82-1999', 'prod-americano', 1, 12000, 0, '2026-01-20T18:39:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1999-2', 'hist-ticket-82-1999', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T18:39:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1999-3', 'hist-ticket-82-1999', 'prod-americano', 1, 12000, 0, '2026-01-20T18:39:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-1999-4', 'hist-ticket-82-1999', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T18:39:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-1999', 'hist-ticket-82-1999', 'cash', 53000, 'completed', '2026-01-20T18:39:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-2000', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-20T17:26:44.000Z', '2026-01-20T17:26:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2000-1', 'hist-ticket-82-2000', 'prod-latte', 1, 15000, 0, '2026-01-20T17:26:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-2000', 'hist-ticket-82-2000', 'cash', 15000, 'completed', '2026-01-20T17:26:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-2001', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-20T15:10:56.000Z', '2026-01-20T15:10:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2001-1', 'hist-ticket-82-2001', 'prod-mocha', 1, 16500, 0, '2026-01-20T15:10:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2001-2', 'hist-ticket-82-2001', 'prod-mocha', 1, 16500, 0, '2026-01-20T15:10:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2001-3', 'hist-ticket-82-2001', 'prod-latte', 1, 15000, 0, '2026-01-20T15:10:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-2001', 'hist-ticket-82-2001', 'cash', 48000, 'completed', '2026-01-20T15:10:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-2002', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-20T09:55:35.000Z', '2026-01-20T09:55:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2002-1', 'hist-ticket-82-2002', 'prod-mocha', 1, 16500, 0, '2026-01-20T09:55:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2002-2', 'hist-ticket-82-2002', 'prod-mocha', 1, 16500, 0, '2026-01-20T09:55:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2002-3', 'hist-ticket-82-2002', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T09:55:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-2002', 'hist-ticket-82-2002', 'cash', 47500, 'completed', '2026-01-20T09:55:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-2003', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-20T14:01:54.000Z', '2026-01-20T14:01:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2003-1', 'hist-ticket-82-2003', 'prod-latte', 1, 15000, 0, '2026-01-20T14:01:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-2003', 'hist-ticket-82-2003', 'cash', 15000, 'completed', '2026-01-20T14:01:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-2004', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-20T14:34:06.000Z', '2026-01-20T14:34:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2004-1', 'hist-ticket-82-2004', 'prod-latte', 1, 15000, 0, '2026-01-20T14:34:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2004-2', 'hist-ticket-82-2004', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T14:34:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-2004', 'hist-ticket-82-2004', 'cash', 29500, 'completed', '2026-01-20T14:34:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-2005', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-20T11:48:34.000Z', '2026-01-20T11:48:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2005-1', 'hist-ticket-82-2005', 'prod-latte', 1, 15000, 0, '2026-01-20T11:48:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2005-2', 'hist-ticket-82-2005', 'prod-mocha', 1, 16500, 0, '2026-01-20T11:48:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-2005', 'hist-ticket-82-2005', 'cash', 31500, 'completed', '2026-01-20T11:48:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-2006', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-20T08:06:47.000Z', '2026-01-20T08:06:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2006-1', 'hist-ticket-82-2006', 'prod-cappuccino', 1, 14500, 0, '2026-01-20T08:06:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-2006', 'hist-ticket-82-2006', 'cash', 14500, 'completed', '2026-01-20T08:06:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-82-2007', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-20T09:51:05.000Z', '2026-01-20T09:51:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2007-1', 'hist-ticket-82-2007', 'prod-mocha', 1, 16500, 0, '2026-01-20T09:51:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2007-2', 'hist-ticket-82-2007', 'prod-americano', 1, 12000, 0, '2026-01-20T09:51:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2007-3', 'hist-ticket-82-2007', 'prod-americano', 1, 12000, 0, '2026-01-20T09:51:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-82-2007-4', 'hist-ticket-82-2007', 'prod-americano', 1, 12000, 0, '2026-01-20T09:51:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-82-2007', 'hist-ticket-82-2007', 'cash', 52500, 'completed', '2026-01-20T09:51:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2008', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-21T10:30:51.000Z', '2026-01-21T10:30:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2008-1', 'hist-ticket-83-2008', 'prod-americano', 1, 12000, 0, '2026-01-21T10:30:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2008-2', 'hist-ticket-83-2008', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T10:30:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2008', 'hist-ticket-83-2008', 'cash', 26500, 'completed', '2026-01-21T10:30:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2009', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-21T19:09:02.000Z', '2026-01-21T19:09:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2009-1', 'hist-ticket-83-2009', 'prod-latte', 1, 15000, 0, '2026-01-21T19:09:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2009-2', 'hist-ticket-83-2009', 'prod-mocha', 1, 16500, 0, '2026-01-21T19:09:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2009-3', 'hist-ticket-83-2009', 'prod-americano', 1, 12000, 0, '2026-01-21T19:09:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2009', 'hist-ticket-83-2009', 'cash', 43500, 'completed', '2026-01-21T19:09:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2010', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-21T14:14:33.000Z', '2026-01-21T14:14:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2010-1', 'hist-ticket-83-2010', 'prod-mocha', 1, 16500, 0, '2026-01-21T14:14:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2010-2', 'hist-ticket-83-2010', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T14:14:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2010', 'hist-ticket-83-2010', 'cash', 31000, 'completed', '2026-01-21T14:14:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2011', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-21T11:34:47.000Z', '2026-01-21T11:34:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2011-1', 'hist-ticket-83-2011', 'prod-latte', 1, 15000, 0, '2026-01-21T11:34:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2011-2', 'hist-ticket-83-2011', 'prod-americano', 1, 12000, 0, '2026-01-21T11:34:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2011-3', 'hist-ticket-83-2011', 'prod-latte', 1, 15000, 0, '2026-01-21T11:34:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2011', 'hist-ticket-83-2011', 'cash', 42000, 'completed', '2026-01-21T11:34:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2012', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-01-21T19:27:50.000Z', '2026-01-21T19:27:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2012-1', 'hist-ticket-83-2012', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T19:27:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2012-2', 'hist-ticket-83-2012', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T19:27:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2012-3', 'hist-ticket-83-2012', 'prod-americano', 1, 12000, 0, '2026-01-21T19:27:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2012', 'hist-ticket-83-2012', 'cash', 41000, 'completed', '2026-01-21T19:27:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2013', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-21T12:39:58.000Z', '2026-01-21T12:39:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2013-1', 'hist-ticket-83-2013', 'prod-americano', 1, 12000, 0, '2026-01-21T12:39:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2013-2', 'hist-ticket-83-2013', 'prod-americano', 1, 12000, 0, '2026-01-21T12:39:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2013-3', 'hist-ticket-83-2013', 'prod-latte', 1, 15000, 0, '2026-01-21T12:39:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2013-4', 'hist-ticket-83-2013', 'prod-mocha', 1, 16500, 0, '2026-01-21T12:39:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2013', 'hist-ticket-83-2013', 'cash', 55500, 'completed', '2026-01-21T12:39:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2014', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-21T16:05:38.000Z', '2026-01-21T16:05:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2014-1', 'hist-ticket-83-2014', 'prod-mocha', 1, 16500, 0, '2026-01-21T16:05:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2014-2', 'hist-ticket-83-2014', 'prod-mocha', 1, 16500, 0, '2026-01-21T16:05:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2014-3', 'hist-ticket-83-2014', 'prod-latte', 1, 15000, 0, '2026-01-21T16:05:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2014-4', 'hist-ticket-83-2014', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T16:05:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2014', 'hist-ticket-83-2014', 'cash', 62500, 'completed', '2026-01-21T16:05:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2015', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-21T10:45:33.000Z', '2026-01-21T10:45:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2015-1', 'hist-ticket-83-2015', 'prod-latte', 1, 15000, 0, '2026-01-21T10:45:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2015-2', 'hist-ticket-83-2015', 'prod-mocha', 1, 16500, 0, '2026-01-21T10:45:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2015-3', 'hist-ticket-83-2015', 'prod-americano', 1, 12000, 0, '2026-01-21T10:45:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2015', 'hist-ticket-83-2015', 'cash', 43500, 'completed', '2026-01-21T10:45:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2016', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-21T12:38:21.000Z', '2026-01-21T12:38:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2016-1', 'hist-ticket-83-2016', 'prod-mocha', 1, 16500, 0, '2026-01-21T12:38:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2016', 'hist-ticket-83-2016', 'cash', 16500, 'completed', '2026-01-21T12:38:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2017', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-21T14:05:01.000Z', '2026-01-21T14:05:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2017-1', 'hist-ticket-83-2017', 'prod-latte', 1, 15000, 0, '2026-01-21T14:05:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2017-2', 'hist-ticket-83-2017', 'prod-mocha', 1, 16500, 0, '2026-01-21T14:05:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2017-3', 'hist-ticket-83-2017', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T14:05:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2017', 'hist-ticket-83-2017', 'cash', 46000, 'completed', '2026-01-21T14:05:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2018', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-01-21T13:05:58.000Z', '2026-01-21T13:05:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2018-1', 'hist-ticket-83-2018', 'prod-americano', 1, 12000, 0, '2026-01-21T13:05:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2018-2', 'hist-ticket-83-2018', 'prod-latte', 1, 15000, 0, '2026-01-21T13:05:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2018', 'hist-ticket-83-2018', 'cash', 27000, 'completed', '2026-01-21T13:05:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2019', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-21T19:50:07.000Z', '2026-01-21T19:50:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2019-1', 'hist-ticket-83-2019', 'prod-latte', 1, 15000, 0, '2026-01-21T19:50:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2019-2', 'hist-ticket-83-2019', 'prod-mocha', 1, 16500, 0, '2026-01-21T19:50:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2019-3', 'hist-ticket-83-2019', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T19:50:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2019-4', 'hist-ticket-83-2019', 'prod-mocha', 1, 16500, 0, '2026-01-21T19:50:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2019', 'hist-ticket-83-2019', 'cash', 62500, 'completed', '2026-01-21T19:50:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2020', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-21T10:13:11.000Z', '2026-01-21T10:13:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2020-1', 'hist-ticket-83-2020', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T10:13:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2020-2', 'hist-ticket-83-2020', 'prod-mocha', 1, 16500, 0, '2026-01-21T10:13:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2020-3', 'hist-ticket-83-2020', 'prod-latte', 1, 15000, 0, '2026-01-21T10:13:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2020', 'hist-ticket-83-2020', 'cash', 46000, 'completed', '2026-01-21T10:13:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2021', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-21T08:34:53.000Z', '2026-01-21T08:34:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2021-1', 'hist-ticket-83-2021', 'prod-mocha', 1, 16500, 0, '2026-01-21T08:34:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2021-2', 'hist-ticket-83-2021', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T08:34:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2021', 'hist-ticket-83-2021', 'cash', 31000, 'completed', '2026-01-21T08:34:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2022', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-01-21T19:54:49.000Z', '2026-01-21T19:54:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2022-1', 'hist-ticket-83-2022', 'prod-americano', 1, 12000, 0, '2026-01-21T19:54:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2022-2', 'hist-ticket-83-2022', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T19:54:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2022-3', 'hist-ticket-83-2022', 'prod-americano', 1, 12000, 0, '2026-01-21T19:54:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2022-4', 'hist-ticket-83-2022', 'prod-latte', 1, 15000, 0, '2026-01-21T19:54:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2022', 'hist-ticket-83-2022', 'cash', 53500, 'completed', '2026-01-21T19:54:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2023', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-21T15:14:57.000Z', '2026-01-21T15:14:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2023-1', 'hist-ticket-83-2023', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T15:14:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2023-2', 'hist-ticket-83-2023', 'prod-americano', 1, 12000, 0, '2026-01-21T15:14:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2023-3', 'hist-ticket-83-2023', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T15:14:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2023-4', 'hist-ticket-83-2023', 'prod-americano', 1, 12000, 0, '2026-01-21T15:14:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2023', 'hist-ticket-83-2023', 'cash', 53000, 'completed', '2026-01-21T15:14:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2024', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-21T13:25:29.000Z', '2026-01-21T13:25:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2024-1', 'hist-ticket-83-2024', 'prod-latte', 1, 15000, 0, '2026-01-21T13:25:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2024-2', 'hist-ticket-83-2024', 'prod-mocha', 1, 16500, 0, '2026-01-21T13:25:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2024-3', 'hist-ticket-83-2024', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T13:25:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2024-4', 'hist-ticket-83-2024', 'prod-americano', 1, 12000, 0, '2026-01-21T13:25:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2024', 'hist-ticket-83-2024', 'cash', 58000, 'completed', '2026-01-21T13:25:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2025', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-21T12:24:42.000Z', '2026-01-21T12:24:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2025-1', 'hist-ticket-83-2025', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T12:24:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2025', 'hist-ticket-83-2025', 'cash', 14500, 'completed', '2026-01-21T12:24:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2026', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-21T12:02:05.000Z', '2026-01-21T12:02:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2026-1', 'hist-ticket-83-2026', 'prod-mocha', 1, 16500, 0, '2026-01-21T12:02:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2026', 'hist-ticket-83-2026', 'cash', 16500, 'completed', '2026-01-21T12:02:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2027', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-01-21T15:47:50.000Z', '2026-01-21T15:47:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2027-1', 'hist-ticket-83-2027', 'prod-mocha', 1, 16500, 0, '2026-01-21T15:47:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2027-2', 'hist-ticket-83-2027', 'prod-mocha', 1, 16500, 0, '2026-01-21T15:47:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2027-3', 'hist-ticket-83-2027', 'prod-latte', 1, 15000, 0, '2026-01-21T15:47:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2027', 'hist-ticket-83-2027', 'cash', 48000, 'completed', '2026-01-21T15:47:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-83-2028', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-21T10:44:04.000Z', '2026-01-21T10:44:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2028-1', 'hist-ticket-83-2028', 'prod-mocha', 1, 16500, 0, '2026-01-21T10:44:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2028-2', 'hist-ticket-83-2028', 'prod-latte', 1, 15000, 0, '2026-01-21T10:44:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2028-3', 'hist-ticket-83-2028', 'prod-cappuccino', 1, 14500, 0, '2026-01-21T10:44:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-83-2028-4', 'hist-ticket-83-2028', 'prod-americano', 1, 12000, 0, '2026-01-21T10:44:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-83-2028', 'hist-ticket-83-2028', 'cash', 58000, 'completed', '2026-01-21T10:44:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2029', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-22T09:42:55.000Z', '2026-01-22T09:42:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2029-1', 'hist-ticket-84-2029', 'prod-americano', 1, 12000, 0, '2026-01-22T09:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2029-2', 'hist-ticket-84-2029', 'prod-americano', 1, 12000, 0, '2026-01-22T09:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2029-3', 'hist-ticket-84-2029', 'prod-mocha', 1, 16500, 0, '2026-01-22T09:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2029-4', 'hist-ticket-84-2029', 'prod-mocha', 1, 16500, 0, '2026-01-22T09:42:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2029', 'hist-ticket-84-2029', 'cash', 57000, 'completed', '2026-01-22T09:42:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2030', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-22T08:11:01.000Z', '2026-01-22T08:11:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2030-1', 'hist-ticket-84-2030', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T08:11:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2030', 'hist-ticket-84-2030', 'cash', 14500, 'completed', '2026-01-22T08:11:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2031', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-22T14:47:07.000Z', '2026-01-22T14:47:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2031-1', 'hist-ticket-84-2031', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T14:47:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2031-2', 'hist-ticket-84-2031', 'prod-mocha', 1, 16500, 0, '2026-01-22T14:47:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2031-3', 'hist-ticket-84-2031', 'prod-latte', 1, 15000, 0, '2026-01-22T14:47:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2031', 'hist-ticket-84-2031', 'cash', 46000, 'completed', '2026-01-22T14:47:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2032', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-22T09:09:22.000Z', '2026-01-22T09:09:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2032-1', 'hist-ticket-84-2032', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T09:09:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2032-2', 'hist-ticket-84-2032', 'prod-americano', 1, 12000, 0, '2026-01-22T09:09:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2032-3', 'hist-ticket-84-2032', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T09:09:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2032', 'hist-ticket-84-2032', 'cash', 41000, 'completed', '2026-01-22T09:09:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2033', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-22T16:44:15.000Z', '2026-01-22T16:44:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2033-1', 'hist-ticket-84-2033', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T16:44:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2033-2', 'hist-ticket-84-2033', 'prod-latte', 1, 15000, 0, '2026-01-22T16:44:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2033-3', 'hist-ticket-84-2033', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T16:44:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2033-4', 'hist-ticket-84-2033', 'prod-latte', 1, 15000, 0, '2026-01-22T16:44:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2033', 'hist-ticket-84-2033', 'cash', 59000, 'completed', '2026-01-22T16:44:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2034', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-01-22T14:17:48.000Z', '2026-01-22T14:17:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2034-1', 'hist-ticket-84-2034', 'prod-latte', 1, 15000, 0, '2026-01-22T14:17:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2034-2', 'hist-ticket-84-2034', 'prod-mocha', 1, 16500, 0, '2026-01-22T14:17:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2034-3', 'hist-ticket-84-2034', 'prod-latte', 1, 15000, 0, '2026-01-22T14:17:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2034', 'hist-ticket-84-2034', 'cash', 46500, 'completed', '2026-01-22T14:17:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2035', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-01-22T19:05:40.000Z', '2026-01-22T19:05:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2035-1', 'hist-ticket-84-2035', 'prod-mocha', 1, 16500, 0, '2026-01-22T19:05:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2035', 'hist-ticket-84-2035', 'cash', 16500, 'completed', '2026-01-22T19:05:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2036', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-22T13:54:22.000Z', '2026-01-22T13:54:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2036-1', 'hist-ticket-84-2036', 'prod-mocha', 1, 16500, 0, '2026-01-22T13:54:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2036-2', 'hist-ticket-84-2036', 'prod-americano', 1, 12000, 0, '2026-01-22T13:54:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2036', 'hist-ticket-84-2036', 'cash', 28500, 'completed', '2026-01-22T13:54:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2037', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-22T09:41:12.000Z', '2026-01-22T09:41:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2037-1', 'hist-ticket-84-2037', 'prod-latte', 1, 15000, 0, '2026-01-22T09:41:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2037', 'hist-ticket-84-2037', 'cash', 15000, 'completed', '2026-01-22T09:41:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2038', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-22T15:19:00.000Z', '2026-01-22T15:19:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2038-1', 'hist-ticket-84-2038', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T15:19:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2038-2', 'hist-ticket-84-2038', 'prod-americano', 1, 12000, 0, '2026-01-22T15:19:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2038', 'hist-ticket-84-2038', 'cash', 26500, 'completed', '2026-01-22T15:19:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2039', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-01-22T11:20:47.000Z', '2026-01-22T11:20:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2039-1', 'hist-ticket-84-2039', 'prod-mocha', 1, 16500, 0, '2026-01-22T11:20:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2039-2', 'hist-ticket-84-2039', 'prod-mocha', 1, 16500, 0, '2026-01-22T11:20:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2039', 'hist-ticket-84-2039', 'cash', 33000, 'completed', '2026-01-22T11:20:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2040', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-22T12:38:40.000Z', '2026-01-22T12:38:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2040-1', 'hist-ticket-84-2040', 'prod-mocha', 1, 16500, 0, '2026-01-22T12:38:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2040', 'hist-ticket-84-2040', 'cash', 16500, 'completed', '2026-01-22T12:38:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2041', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-22T12:50:20.000Z', '2026-01-22T12:50:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2041-1', 'hist-ticket-84-2041', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T12:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2041-2', 'hist-ticket-84-2041', 'prod-americano', 1, 12000, 0, '2026-01-22T12:50:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2041', 'hist-ticket-84-2041', 'cash', 26500, 'completed', '2026-01-22T12:50:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2042', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-22T10:19:23.000Z', '2026-01-22T10:19:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2042-1', 'hist-ticket-84-2042', 'prod-mocha', 1, 16500, 0, '2026-01-22T10:19:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2042-2', 'hist-ticket-84-2042', 'prod-americano', 1, 12000, 0, '2026-01-22T10:19:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2042', 'hist-ticket-84-2042', 'cash', 28500, 'completed', '2026-01-22T10:19:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2043', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-22T09:13:30.000Z', '2026-01-22T09:13:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2043-1', 'hist-ticket-84-2043', 'prod-americano', 1, 12000, 0, '2026-01-22T09:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2043-2', 'hist-ticket-84-2043', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T09:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2043-3', 'hist-ticket-84-2043', 'prod-americano', 1, 12000, 0, '2026-01-22T09:13:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2043', 'hist-ticket-84-2043', 'cash', 38500, 'completed', '2026-01-22T09:13:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2044', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-01-22T09:44:17.000Z', '2026-01-22T09:44:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2044-1', 'hist-ticket-84-2044', 'prod-latte', 1, 15000, 0, '2026-01-22T09:44:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2044-2', 'hist-ticket-84-2044', 'prod-americano', 1, 12000, 0, '2026-01-22T09:44:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2044', 'hist-ticket-84-2044', 'cash', 27000, 'completed', '2026-01-22T09:44:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2045', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-01-22T16:22:19.000Z', '2026-01-22T16:22:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2045-1', 'hist-ticket-84-2045', 'prod-americano', 1, 12000, 0, '2026-01-22T16:22:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2045-2', 'hist-ticket-84-2045', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T16:22:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2045-3', 'hist-ticket-84-2045', 'prod-latte', 1, 15000, 0, '2026-01-22T16:22:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2045-4', 'hist-ticket-84-2045', 'prod-latte', 1, 15000, 0, '2026-01-22T16:22:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2045', 'hist-ticket-84-2045', 'cash', 56500, 'completed', '2026-01-22T16:22:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2046', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-22T08:13:14.000Z', '2026-01-22T08:13:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2046-1', 'hist-ticket-84-2046', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T08:13:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2046-2', 'hist-ticket-84-2046', 'prod-americano', 1, 12000, 0, '2026-01-22T08:13:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2046-3', 'hist-ticket-84-2046', 'prod-latte', 1, 15000, 0, '2026-01-22T08:13:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2046', 'hist-ticket-84-2046', 'cash', 41500, 'completed', '2026-01-22T08:13:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2047', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-01-22T19:37:55.000Z', '2026-01-22T19:37:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2047-1', 'hist-ticket-84-2047', 'prod-latte', 1, 15000, 0, '2026-01-22T19:37:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2047-2', 'hist-ticket-84-2047', 'prod-cappuccino', 1, 14500, 0, '2026-01-22T19:37:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2047-3', 'hist-ticket-84-2047', 'prod-mocha', 1, 16500, 0, '2026-01-22T19:37:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2047', 'hist-ticket-84-2047', 'cash', 46000, 'completed', '2026-01-22T19:37:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2048', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-22T17:30:35.000Z', '2026-01-22T17:30:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2048-1', 'hist-ticket-84-2048', 'prod-latte', 1, 15000, 0, '2026-01-22T17:30:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2048', 'hist-ticket-84-2048', 'cash', 15000, 'completed', '2026-01-22T17:30:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2049', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-22T19:10:14.000Z', '2026-01-22T19:10:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2049-1', 'hist-ticket-84-2049', 'prod-mocha', 1, 16500, 0, '2026-01-22T19:10:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2049-2', 'hist-ticket-84-2049', 'prod-latte', 1, 15000, 0, '2026-01-22T19:10:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2049', 'hist-ticket-84-2049', 'cash', 31500, 'completed', '2026-01-22T19:10:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-84-2050', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-22T10:44:13.000Z', '2026-01-22T10:44:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-84-2050-1', 'hist-ticket-84-2050', 'prod-latte', 1, 15000, 0, '2026-01-22T10:44:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-84-2050', 'hist-ticket-84-2050', 'cash', 15000, 'completed', '2026-01-22T10:44:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2051', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-23T19:52:31.000Z', '2026-01-23T19:52:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2051-1', 'hist-ticket-85-2051', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T19:52:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2051-2', 'hist-ticket-85-2051', 'prod-mocha', 1, 16500, 0, '2026-01-23T19:52:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2051', 'hist-ticket-85-2051', 'cash', 31000, 'completed', '2026-01-23T19:52:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2052', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-23T18:51:43.000Z', '2026-01-23T18:51:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2052-1', 'hist-ticket-85-2052', 'prod-mocha', 1, 16500, 0, '2026-01-23T18:51:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2052-2', 'hist-ticket-85-2052', 'prod-latte', 1, 15000, 0, '2026-01-23T18:51:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2052-3', 'hist-ticket-85-2052', 'prod-mocha', 1, 16500, 0, '2026-01-23T18:51:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2052', 'hist-ticket-85-2052', 'cash', 48000, 'completed', '2026-01-23T18:51:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2053', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-01-23T17:30:18.000Z', '2026-01-23T17:30:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2053-1', 'hist-ticket-85-2053', 'prod-latte', 1, 15000, 0, '2026-01-23T17:30:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2053', 'hist-ticket-85-2053', 'cash', 15000, 'completed', '2026-01-23T17:30:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2054', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-23T16:10:28.000Z', '2026-01-23T16:10:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2054-1', 'hist-ticket-85-2054', 'prod-mocha', 1, 16500, 0, '2026-01-23T16:10:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2054-2', 'hist-ticket-85-2054', 'prod-latte', 1, 15000, 0, '2026-01-23T16:10:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2054-3', 'hist-ticket-85-2054', 'prod-mocha', 1, 16500, 0, '2026-01-23T16:10:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2054', 'hist-ticket-85-2054', 'cash', 48000, 'completed', '2026-01-23T16:10:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2055', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-23T16:53:26.000Z', '2026-01-23T16:53:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2055-1', 'hist-ticket-85-2055', 'prod-latte', 1, 15000, 0, '2026-01-23T16:53:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2055-2', 'hist-ticket-85-2055', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T16:53:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2055-3', 'hist-ticket-85-2055', 'prod-latte', 1, 15000, 0, '2026-01-23T16:53:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2055', 'hist-ticket-85-2055', 'cash', 44500, 'completed', '2026-01-23T16:53:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2056', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-23T19:21:54.000Z', '2026-01-23T19:21:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2056-1', 'hist-ticket-85-2056', 'prod-americano', 1, 12000, 0, '2026-01-23T19:21:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2056', 'hist-ticket-85-2056', 'cash', 12000, 'completed', '2026-01-23T19:21:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2057', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-23T18:35:39.000Z', '2026-01-23T18:35:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2057-1', 'hist-ticket-85-2057', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T18:35:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2057-2', 'hist-ticket-85-2057', 'prod-americano', 1, 12000, 0, '2026-01-23T18:35:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2057-3', 'hist-ticket-85-2057', 'prod-latte', 1, 15000, 0, '2026-01-23T18:35:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2057', 'hist-ticket-85-2057', 'cash', 41500, 'completed', '2026-01-23T18:35:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2058', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-23T17:57:34.000Z', '2026-01-23T17:57:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2058-1', 'hist-ticket-85-2058', 'prod-latte', 1, 15000, 0, '2026-01-23T17:57:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2058-2', 'hist-ticket-85-2058', 'prod-latte', 1, 15000, 0, '2026-01-23T17:57:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2058', 'hist-ticket-85-2058', 'cash', 30000, 'completed', '2026-01-23T17:57:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2059', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-23T09:58:38.000Z', '2026-01-23T09:58:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2059-1', 'hist-ticket-85-2059', 'prod-latte', 1, 15000, 0, '2026-01-23T09:58:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2059-2', 'hist-ticket-85-2059', 'prod-mocha', 1, 16500, 0, '2026-01-23T09:58:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2059-3', 'hist-ticket-85-2059', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T09:58:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2059', 'hist-ticket-85-2059', 'cash', 46000, 'completed', '2026-01-23T09:58:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2060', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-23T15:10:23.000Z', '2026-01-23T15:10:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2060-1', 'hist-ticket-85-2060', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T15:10:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2060-2', 'hist-ticket-85-2060', 'prod-americano', 1, 12000, 0, '2026-01-23T15:10:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2060-3', 'hist-ticket-85-2060', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T15:10:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2060-4', 'hist-ticket-85-2060', 'prod-americano', 1, 12000, 0, '2026-01-23T15:10:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2060', 'hist-ticket-85-2060', 'cash', 53000, 'completed', '2026-01-23T15:10:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2061', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-23T16:10:41.000Z', '2026-01-23T16:10:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2061-1', 'hist-ticket-85-2061', 'prod-mocha', 1, 16500, 0, '2026-01-23T16:10:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2061', 'hist-ticket-85-2061', 'cash', 16500, 'completed', '2026-01-23T16:10:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2062', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-01-23T14:25:55.000Z', '2026-01-23T14:25:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2062-1', 'hist-ticket-85-2062', 'prod-americano', 1, 12000, 0, '2026-01-23T14:25:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2062', 'hist-ticket-85-2062', 'cash', 12000, 'completed', '2026-01-23T14:25:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2063', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-01-23T13:27:36.000Z', '2026-01-23T13:27:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2063-1', 'hist-ticket-85-2063', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T13:27:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2063-2', 'hist-ticket-85-2063', 'prod-americano', 1, 12000, 0, '2026-01-23T13:27:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2063-3', 'hist-ticket-85-2063', 'prod-latte', 1, 15000, 0, '2026-01-23T13:27:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2063-4', 'hist-ticket-85-2063', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T13:27:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2063', 'hist-ticket-85-2063', 'cash', 56000, 'completed', '2026-01-23T13:27:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2064', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-23T12:31:16.000Z', '2026-01-23T12:31:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2064-1', 'hist-ticket-85-2064', 'prod-americano', 1, 12000, 0, '2026-01-23T12:31:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2064-2', 'hist-ticket-85-2064', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T12:31:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2064', 'hist-ticket-85-2064', 'cash', 26500, 'completed', '2026-01-23T12:31:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2065', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-23T13:43:18.000Z', '2026-01-23T13:43:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2065-1', 'hist-ticket-85-2065', 'prod-mocha', 1, 16500, 0, '2026-01-23T13:43:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2065-2', 'hist-ticket-85-2065', 'prod-americano', 1, 12000, 0, '2026-01-23T13:43:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2065-3', 'hist-ticket-85-2065', 'prod-mocha', 1, 16500, 0, '2026-01-23T13:43:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2065', 'hist-ticket-85-2065', 'cash', 45000, 'completed', '2026-01-23T13:43:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2066', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-23T11:38:10.000Z', '2026-01-23T11:38:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2066-1', 'hist-ticket-85-2066', 'prod-latte', 1, 15000, 0, '2026-01-23T11:38:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2066-2', 'hist-ticket-85-2066', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T11:38:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2066-3', 'hist-ticket-85-2066', 'prod-mocha', 1, 16500, 0, '2026-01-23T11:38:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2066', 'hist-ticket-85-2066', 'cash', 46000, 'completed', '2026-01-23T11:38:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2067', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-23T09:35:17.000Z', '2026-01-23T09:35:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2067-1', 'hist-ticket-85-2067', 'prod-americano', 1, 12000, 0, '2026-01-23T09:35:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2067-2', 'hist-ticket-85-2067', 'prod-americano', 1, 12000, 0, '2026-01-23T09:35:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2067', 'hist-ticket-85-2067', 'cash', 24000, 'completed', '2026-01-23T09:35:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2068', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-01-23T13:20:48.000Z', '2026-01-23T13:20:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2068-1', 'hist-ticket-85-2068', 'prod-americano', 1, 12000, 0, '2026-01-23T13:20:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2068', 'hist-ticket-85-2068', 'cash', 12000, 'completed', '2026-01-23T13:20:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2069', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-01-23T10:02:13.000Z', '2026-01-23T10:02:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2069-1', 'hist-ticket-85-2069', 'prod-latte', 1, 15000, 0, '2026-01-23T10:02:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2069-2', 'hist-ticket-85-2069', 'prod-latte', 1, 15000, 0, '2026-01-23T10:02:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2069', 'hist-ticket-85-2069', 'cash', 30000, 'completed', '2026-01-23T10:02:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-85-2070', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-23T11:28:43.000Z', '2026-01-23T11:28:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2070-1', 'hist-ticket-85-2070', 'prod-mocha', 1, 16500, 0, '2026-01-23T11:28:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2070-2', 'hist-ticket-85-2070', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T11:28:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2070-3', 'hist-ticket-85-2070', 'prod-cappuccino', 1, 14500, 0, '2026-01-23T11:28:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-85-2070-4', 'hist-ticket-85-2070', 'prod-latte', 1, 15000, 0, '2026-01-23T11:28:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-85-2070', 'hist-ticket-85-2070', 'cash', 60500, 'completed', '2026-01-23T11:28:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2071', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-24T15:53:36.000Z', '2026-01-24T15:53:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2071-1', 'hist-ticket-86-2071', 'prod-mocha', 1, 16500, 0, '2026-01-24T15:53:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2071-2', 'hist-ticket-86-2071', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T15:53:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2071-3', 'hist-ticket-86-2071', 'prod-mocha', 1, 16500, 0, '2026-01-24T15:53:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2071', 'hist-ticket-86-2071', 'cash', 47500, 'completed', '2026-01-24T15:53:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2072', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-24T19:53:38.000Z', '2026-01-24T19:53:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2072-1', 'hist-ticket-86-2072', 'prod-latte', 1, 15000, 0, '2026-01-24T19:53:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2072', 'hist-ticket-86-2072', 'cash', 15000, 'completed', '2026-01-24T19:53:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2073', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-24T11:36:31.000Z', '2026-01-24T11:36:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2073-1', 'hist-ticket-86-2073', 'prod-mocha', 1, 16500, 0, '2026-01-24T11:36:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2073-2', 'hist-ticket-86-2073', 'prod-americano', 1, 12000, 0, '2026-01-24T11:36:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2073-3', 'hist-ticket-86-2073', 'prod-americano', 1, 12000, 0, '2026-01-24T11:36:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2073', 'hist-ticket-86-2073', 'cash', 40500, 'completed', '2026-01-24T11:36:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2074', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-24T13:18:00.000Z', '2026-01-24T13:18:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2074-1', 'hist-ticket-86-2074', 'prod-mocha', 1, 16500, 0, '2026-01-24T13:18:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2074-2', 'hist-ticket-86-2074', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T13:18:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2074-3', 'hist-ticket-86-2074', 'prod-mocha', 1, 16500, 0, '2026-01-24T13:18:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2074-4', 'hist-ticket-86-2074', 'prod-mocha', 1, 16500, 0, '2026-01-24T13:18:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2074', 'hist-ticket-86-2074', 'cash', 64000, 'completed', '2026-01-24T13:18:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2075', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-24T17:15:44.000Z', '2026-01-24T17:15:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2075-1', 'hist-ticket-86-2075', 'prod-mocha', 1, 16500, 0, '2026-01-24T17:15:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2075-2', 'hist-ticket-86-2075', 'prod-americano', 1, 12000, 0, '2026-01-24T17:15:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2075-3', 'hist-ticket-86-2075', 'prod-americano', 1, 12000, 0, '2026-01-24T17:15:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2075', 'hist-ticket-86-2075', 'cash', 40500, 'completed', '2026-01-24T17:15:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2076', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-24T15:33:24.000Z', '2026-01-24T15:33:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2076-1', 'hist-ticket-86-2076', 'prod-americano', 1, 12000, 0, '2026-01-24T15:33:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2076-2', 'hist-ticket-86-2076', 'prod-latte', 1, 15000, 0, '2026-01-24T15:33:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2076-3', 'hist-ticket-86-2076', 'prod-americano', 1, 12000, 0, '2026-01-24T15:33:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2076', 'hist-ticket-86-2076', 'cash', 39000, 'completed', '2026-01-24T15:33:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2077', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-24T18:51:59.000Z', '2026-01-24T18:51:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2077-1', 'hist-ticket-86-2077', 'prod-americano', 1, 12000, 0, '2026-01-24T18:51:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2077', 'hist-ticket-86-2077', 'cash', 12000, 'completed', '2026-01-24T18:51:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2078', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-24T15:10:19.000Z', '2026-01-24T15:10:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2078-1', 'hist-ticket-86-2078', 'prod-americano', 1, 12000, 0, '2026-01-24T15:10:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2078-2', 'hist-ticket-86-2078', 'prod-americano', 1, 12000, 0, '2026-01-24T15:10:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2078', 'hist-ticket-86-2078', 'cash', 24000, 'completed', '2026-01-24T15:10:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2079', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-24T12:49:42.000Z', '2026-01-24T12:49:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2079-1', 'hist-ticket-86-2079', 'prod-mocha', 1, 16500, 0, '2026-01-24T12:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2079-2', 'hist-ticket-86-2079', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T12:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2079-3', 'hist-ticket-86-2079', 'prod-americano', 1, 12000, 0, '2026-01-24T12:49:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2079', 'hist-ticket-86-2079', 'cash', 43000, 'completed', '2026-01-24T12:49:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2080', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-01-24T11:56:39.000Z', '2026-01-24T11:56:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2080-1', 'hist-ticket-86-2080', 'prod-americano', 1, 12000, 0, '2026-01-24T11:56:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2080', 'hist-ticket-86-2080', 'cash', 12000, 'completed', '2026-01-24T11:56:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2081', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-24T15:30:16.000Z', '2026-01-24T15:30:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2081-1', 'hist-ticket-86-2081', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T15:30:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2081-2', 'hist-ticket-86-2081', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T15:30:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2081-3', 'hist-ticket-86-2081', 'prod-americano', 1, 12000, 0, '2026-01-24T15:30:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2081-4', 'hist-ticket-86-2081', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T15:30:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2081', 'hist-ticket-86-2081', 'cash', 55500, 'completed', '2026-01-24T15:30:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2082', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-01-24T09:02:43.000Z', '2026-01-24T09:02:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2082-1', 'hist-ticket-86-2082', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T09:02:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2082', 'hist-ticket-86-2082', 'cash', 14500, 'completed', '2026-01-24T09:02:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2083', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-24T11:08:17.000Z', '2026-01-24T11:08:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2083-1', 'hist-ticket-86-2083', 'prod-americano', 1, 12000, 0, '2026-01-24T11:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2083-2', 'hist-ticket-86-2083', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T11:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2083-3', 'hist-ticket-86-2083', 'prod-mocha', 1, 16500, 0, '2026-01-24T11:08:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2083', 'hist-ticket-86-2083', 'cash', 43000, 'completed', '2026-01-24T11:08:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2084', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-01-24T18:22:18.000Z', '2026-01-24T18:22:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2084-1', 'hist-ticket-86-2084', 'prod-mocha', 1, 16500, 0, '2026-01-24T18:22:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2084-2', 'hist-ticket-86-2084', 'prod-latte', 1, 15000, 0, '2026-01-24T18:22:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2084-3', 'hist-ticket-86-2084', 'prod-latte', 1, 15000, 0, '2026-01-24T18:22:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2084-4', 'hist-ticket-86-2084', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T18:22:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2084', 'hist-ticket-86-2084', 'cash', 61000, 'completed', '2026-01-24T18:22:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2085', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-24T10:47:37.000Z', '2026-01-24T10:47:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2085-1', 'hist-ticket-86-2085', 'prod-latte', 1, 15000, 0, '2026-01-24T10:47:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2085-2', 'hist-ticket-86-2085', 'prod-latte', 1, 15000, 0, '2026-01-24T10:47:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2085', 'hist-ticket-86-2085', 'cash', 30000, 'completed', '2026-01-24T10:47:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2086', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-24T08:34:23.000Z', '2026-01-24T08:34:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2086-1', 'hist-ticket-86-2086', 'prod-latte', 1, 15000, 0, '2026-01-24T08:34:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2086', 'hist-ticket-86-2086', 'cash', 15000, 'completed', '2026-01-24T08:34:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2087', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-24T14:45:17.000Z', '2026-01-24T14:45:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2087-1', 'hist-ticket-86-2087', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T14:45:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2087-2', 'hist-ticket-86-2087', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T14:45:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2087-3', 'hist-ticket-86-2087', 'prod-latte', 1, 15000, 0, '2026-01-24T14:45:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2087-4', 'hist-ticket-86-2087', 'prod-mocha', 1, 16500, 0, '2026-01-24T14:45:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2087', 'hist-ticket-86-2087', 'cash', 60500, 'completed', '2026-01-24T14:45:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2088', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-24T17:47:08.000Z', '2026-01-24T17:47:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2088-1', 'hist-ticket-86-2088', 'prod-americano', 1, 12000, 0, '2026-01-24T17:47:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2088-2', 'hist-ticket-86-2088', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T17:47:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2088-3', 'hist-ticket-86-2088', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T17:47:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2088-4', 'hist-ticket-86-2088', 'prod-mocha', 1, 16500, 0, '2026-01-24T17:47:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2088', 'hist-ticket-86-2088', 'cash', 57500, 'completed', '2026-01-24T17:47:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2089', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-24T10:30:19.000Z', '2026-01-24T10:30:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2089-1', 'hist-ticket-86-2089', 'prod-americano', 1, 12000, 0, '2026-01-24T10:30:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2089-2', 'hist-ticket-86-2089', 'prod-americano', 1, 12000, 0, '2026-01-24T10:30:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2089', 'hist-ticket-86-2089', 'cash', 24000, 'completed', '2026-01-24T10:30:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2090', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-24T16:02:10.000Z', '2026-01-24T16:02:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2090-1', 'hist-ticket-86-2090', 'prod-latte', 1, 15000, 0, '2026-01-24T16:02:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2090-2', 'hist-ticket-86-2090', 'prod-latte', 1, 15000, 0, '2026-01-24T16:02:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2090', 'hist-ticket-86-2090', 'cash', 30000, 'completed', '2026-01-24T16:02:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2091', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-24T11:22:56.000Z', '2026-01-24T11:22:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2091-1', 'hist-ticket-86-2091', 'prod-mocha', 1, 16500, 0, '2026-01-24T11:22:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2091', 'hist-ticket-86-2091', 'cash', 16500, 'completed', '2026-01-24T11:22:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2092', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-24T17:22:44.000Z', '2026-01-24T17:22:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2092-1', 'hist-ticket-86-2092', 'prod-latte', 1, 15000, 0, '2026-01-24T17:22:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2092-2', 'hist-ticket-86-2092', 'prod-latte', 1, 15000, 0, '2026-01-24T17:22:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2092', 'hist-ticket-86-2092', 'cash', 30000, 'completed', '2026-01-24T17:22:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2093', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-24T19:28:57.000Z', '2026-01-24T19:28:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2093-1', 'hist-ticket-86-2093', 'prod-mocha', 1, 16500, 0, '2026-01-24T19:28:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2093-2', 'hist-ticket-86-2093', 'prod-americano', 1, 12000, 0, '2026-01-24T19:28:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2093', 'hist-ticket-86-2093', 'cash', 28500, 'completed', '2026-01-24T19:28:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2094', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-24T18:37:47.000Z', '2026-01-24T18:37:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2094-1', 'hist-ticket-86-2094', 'prod-mocha', 1, 16500, 0, '2026-01-24T18:37:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2094-2', 'hist-ticket-86-2094', 'prod-mocha', 1, 16500, 0, '2026-01-24T18:37:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2094', 'hist-ticket-86-2094', 'cash', 33000, 'completed', '2026-01-24T18:37:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2095', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-24T12:48:43.000Z', '2026-01-24T12:48:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2095-1', 'hist-ticket-86-2095', 'prod-latte', 1, 15000, 0, '2026-01-24T12:48:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2095-2', 'hist-ticket-86-2095', 'prod-mocha', 1, 16500, 0, '2026-01-24T12:48:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2095-3', 'hist-ticket-86-2095', 'prod-americano', 1, 12000, 0, '2026-01-24T12:48:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2095', 'hist-ticket-86-2095', 'cash', 43500, 'completed', '2026-01-24T12:48:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2096', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-01-24T09:58:44.000Z', '2026-01-24T09:58:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2096-1', 'hist-ticket-86-2096', 'prod-mocha', 1, 16500, 0, '2026-01-24T09:58:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2096-2', 'hist-ticket-86-2096', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T09:58:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2096-3', 'hist-ticket-86-2096', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T09:58:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2096-4', 'hist-ticket-86-2096', 'prod-mocha', 1, 16500, 0, '2026-01-24T09:58:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2096', 'hist-ticket-86-2096', 'cash', 62000, 'completed', '2026-01-24T09:58:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2097', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-01-24T11:21:43.000Z', '2026-01-24T11:21:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2097-1', 'hist-ticket-86-2097', 'prod-americano', 1, 12000, 0, '2026-01-24T11:21:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2097-2', 'hist-ticket-86-2097', 'prod-americano', 1, 12000, 0, '2026-01-24T11:21:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2097-3', 'hist-ticket-86-2097', 'prod-latte', 1, 15000, 0, '2026-01-24T11:21:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2097', 'hist-ticket-86-2097', 'cash', 39000, 'completed', '2026-01-24T11:21:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2098', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-24T10:00:36.000Z', '2026-01-24T10:00:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2098-1', 'hist-ticket-86-2098', 'prod-americano', 1, 12000, 0, '2026-01-24T10:00:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2098-2', 'hist-ticket-86-2098', 'prod-mocha', 1, 16500, 0, '2026-01-24T10:00:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2098-3', 'hist-ticket-86-2098', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T10:00:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2098-4', 'hist-ticket-86-2098', 'prod-mocha', 1, 16500, 0, '2026-01-24T10:00:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2098', 'hist-ticket-86-2098', 'cash', 59500, 'completed', '2026-01-24T10:00:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2099', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-24T13:55:33.000Z', '2026-01-24T13:55:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2099-1', 'hist-ticket-86-2099', 'prod-latte', 1, 15000, 0, '2026-01-24T13:55:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2099-2', 'hist-ticket-86-2099', 'prod-mocha', 1, 16500, 0, '2026-01-24T13:55:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2099-3', 'hist-ticket-86-2099', 'prod-americano', 1, 12000, 0, '2026-01-24T13:55:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2099-4', 'hist-ticket-86-2099', 'prod-americano', 1, 12000, 0, '2026-01-24T13:55:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2099', 'hist-ticket-86-2099', 'cash', 55500, 'completed', '2026-01-24T13:55:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2100', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-01-24T17:55:09.000Z', '2026-01-24T17:55:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2100-1', 'hist-ticket-86-2100', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T17:55:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2100', 'hist-ticket-86-2100', 'cash', 14500, 'completed', '2026-01-24T17:55:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2101', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-24T16:31:54.000Z', '2026-01-24T16:31:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2101-1', 'hist-ticket-86-2101', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T16:31:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2101', 'hist-ticket-86-2101', 'cash', 14500, 'completed', '2026-01-24T16:31:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2102', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-01-24T18:14:56.000Z', '2026-01-24T18:14:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2102-1', 'hist-ticket-86-2102', 'prod-americano', 1, 12000, 0, '2026-01-24T18:14:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2102', 'hist-ticket-86-2102', 'cash', 12000, 'completed', '2026-01-24T18:14:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2103', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-01-24T18:40:30.000Z', '2026-01-24T18:40:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2103-1', 'hist-ticket-86-2103', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T18:40:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2103', 'hist-ticket-86-2103', 'cash', 14500, 'completed', '2026-01-24T18:40:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2104', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-01-24T18:06:57.000Z', '2026-01-24T18:06:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2104-1', 'hist-ticket-86-2104', 'prod-latte', 1, 15000, 0, '2026-01-24T18:06:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2104-2', 'hist-ticket-86-2104', 'prod-mocha', 1, 16500, 0, '2026-01-24T18:06:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2104', 'hist-ticket-86-2104', 'cash', 31500, 'completed', '2026-01-24T18:06:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2105', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-24T12:36:31.000Z', '2026-01-24T12:36:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2105-1', 'hist-ticket-86-2105', 'prod-mocha', 1, 16500, 0, '2026-01-24T12:36:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2105-2', 'hist-ticket-86-2105', 'prod-americano', 1, 12000, 0, '2026-01-24T12:36:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2105-3', 'hist-ticket-86-2105', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T12:36:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2105', 'hist-ticket-86-2105', 'cash', 43000, 'completed', '2026-01-24T12:36:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2106', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-24T15:20:12.000Z', '2026-01-24T15:20:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2106-1', 'hist-ticket-86-2106', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T15:20:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2106-2', 'hist-ticket-86-2106', 'prod-americano', 1, 12000, 0, '2026-01-24T15:20:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2106', 'hist-ticket-86-2106', 'cash', 26500, 'completed', '2026-01-24T15:20:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2107', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-24T19:56:49.000Z', '2026-01-24T19:56:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2107-1', 'hist-ticket-86-2107', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T19:56:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2107-2', 'hist-ticket-86-2107', 'prod-latte', 1, 15000, 0, '2026-01-24T19:56:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2107', 'hist-ticket-86-2107', 'cash', 29500, 'completed', '2026-01-24T19:56:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2108', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-24T09:27:31.000Z', '2026-01-24T09:27:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2108-1', 'hist-ticket-86-2108', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T09:27:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2108-2', 'hist-ticket-86-2108', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T09:27:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2108-3', 'hist-ticket-86-2108', 'prod-mocha', 1, 16500, 0, '2026-01-24T09:27:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2108', 'hist-ticket-86-2108', 'cash', 45500, 'completed', '2026-01-24T09:27:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2109', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-24T14:38:13.000Z', '2026-01-24T14:38:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2109-1', 'hist-ticket-86-2109', 'prod-latte', 1, 15000, 0, '2026-01-24T14:38:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2109', 'hist-ticket-86-2109', 'cash', 15000, 'completed', '2026-01-24T14:38:13.000Z');