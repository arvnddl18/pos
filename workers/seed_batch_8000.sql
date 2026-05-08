INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1775-3', 'hist-ticket-73-1775', 'prod-latte', 1, 15000, 0, '2026-01-11T18:32:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1775-4', 'hist-ticket-73-1775', 'prod-latte', 1, 15000, 0, '2026-01-11T18:32:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1775', 'hist-ticket-73-1775', 'cash', 61500, 'completed', '2026-01-11T18:32:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1776', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-11T17:32:57.000Z', '2026-01-11T17:32:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1776-1', 'hist-ticket-73-1776', 'prod-americano', 1, 12000, 0, '2026-01-11T17:32:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1776-2', 'hist-ticket-73-1776', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T17:32:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1776-3', 'hist-ticket-73-1776', 'prod-americano', 1, 12000, 0, '2026-01-11T17:32:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1776-4', 'hist-ticket-73-1776', 'prod-mocha', 1, 16500, 0, '2026-01-11T17:32:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1776', 'hist-ticket-73-1776', 'cash', 55000, 'completed', '2026-01-11T17:32:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1777', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-11T15:05:52.000Z', '2026-01-11T15:05:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1777-1', 'hist-ticket-73-1777', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T15:05:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1777-2', 'hist-ticket-73-1777', 'prod-mocha', 1, 16500, 0, '2026-01-11T15:05:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1777-3', 'hist-ticket-73-1777', 'prod-americano', 1, 12000, 0, '2026-01-11T15:05:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1777-4', 'hist-ticket-73-1777', 'prod-mocha', 1, 16500, 0, '2026-01-11T15:05:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1777', 'hist-ticket-73-1777', 'cash', 59500, 'completed', '2026-01-11T15:05:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1778', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-11T19:45:14.000Z', '2026-01-11T19:45:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1778-1', 'hist-ticket-73-1778', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T19:45:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1778-2', 'hist-ticket-73-1778', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T19:45:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1778', 'hist-ticket-73-1778', 'cash', 29000, 'completed', '2026-01-11T19:45:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1779', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-01-11T19:15:34.000Z', '2026-01-11T19:15:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1779-1', 'hist-ticket-73-1779', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T19:15:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1779', 'hist-ticket-73-1779', 'cash', 14500, 'completed', '2026-01-11T19:15:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1780', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-11T12:06:48.000Z', '2026-01-11T12:06:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1780-1', 'hist-ticket-73-1780', 'prod-latte', 1, 15000, 0, '2026-01-11T12:06:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1780-2', 'hist-ticket-73-1780', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T12:06:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1780-3', 'hist-ticket-73-1780', 'prod-mocha', 1, 16500, 0, '2026-01-11T12:06:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1780', 'hist-ticket-73-1780', 'cash', 46000, 'completed', '2026-01-11T12:06:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1781', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-11T08:46:45.000Z', '2026-01-11T08:46:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1781-1', 'hist-ticket-73-1781', 'prod-americano', 1, 12000, 0, '2026-01-11T08:46:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1781-2', 'hist-ticket-73-1781', 'prod-americano', 1, 12000, 0, '2026-01-11T08:46:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1781', 'hist-ticket-73-1781', 'cash', 24000, 'completed', '2026-01-11T08:46:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1782', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-11T10:51:13.000Z', '2026-01-11T10:51:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1782-1', 'hist-ticket-73-1782', 'prod-americano', 1, 12000, 0, '2026-01-11T10:51:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1782-2', 'hist-ticket-73-1782', 'prod-americano', 1, 12000, 0, '2026-01-11T10:51:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1782-3', 'hist-ticket-73-1782', 'prod-latte', 1, 15000, 0, '2026-01-11T10:51:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1782-4', 'hist-ticket-73-1782', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T10:51:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1782', 'hist-ticket-73-1782', 'cash', 53500, 'completed', '2026-01-11T10:51:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1783', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-11T09:23:01.000Z', '2026-01-11T09:23:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1783-1', 'hist-ticket-73-1783', 'prod-mocha', 1, 16500, 0, '2026-01-11T09:23:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1783-2', 'hist-ticket-73-1783', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T09:23:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1783-3', 'hist-ticket-73-1783', 'prod-latte', 1, 15000, 0, '2026-01-11T09:23:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1783-4', 'hist-ticket-73-1783', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T09:23:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1783', 'hist-ticket-73-1783', 'cash', 60500, 'completed', '2026-01-11T09:23:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1784', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-11T13:01:30.000Z', '2026-01-11T13:01:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1784-1', 'hist-ticket-73-1784', 'prod-mocha', 1, 16500, 0, '2026-01-11T13:01:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1784-2', 'hist-ticket-73-1784', 'prod-mocha', 1, 16500, 0, '2026-01-11T13:01:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1784-3', 'hist-ticket-73-1784', 'prod-americano', 1, 12000, 0, '2026-01-11T13:01:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1784', 'hist-ticket-73-1784', 'cash', 45000, 'completed', '2026-01-11T13:01:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1785', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-11T13:20:38.000Z', '2026-01-11T13:20:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1785-1', 'hist-ticket-73-1785', 'prod-latte', 1, 15000, 0, '2026-01-11T13:20:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1785-2', 'hist-ticket-73-1785', 'prod-latte', 1, 15000, 0, '2026-01-11T13:20:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1785-3', 'hist-ticket-73-1785', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T13:20:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1785-4', 'hist-ticket-73-1785', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T13:20:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1785', 'hist-ticket-73-1785', 'cash', 59000, 'completed', '2026-01-11T13:20:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-73-1786', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-01-11T16:00:15.000Z', '2026-01-11T16:00:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1786-1', 'hist-ticket-73-1786', 'prod-americano', 1, 12000, 0, '2026-01-11T16:00:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1786-2', 'hist-ticket-73-1786', 'prod-cappuccino', 1, 14500, 0, '2026-01-11T16:00:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-73-1786-3', 'hist-ticket-73-1786', 'prod-americano', 1, 12000, 0, '2026-01-11T16:00:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-73-1786', 'hist-ticket-73-1786', 'cash', 38500, 'completed', '2026-01-11T16:00:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1787', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-12T19:34:44.000Z', '2026-01-12T19:34:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1787-1', 'hist-ticket-74-1787', 'prod-mocha', 1, 16500, 0, '2026-01-12T19:34:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1787-2', 'hist-ticket-74-1787', 'prod-latte', 1, 15000, 0, '2026-01-12T19:34:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1787-3', 'hist-ticket-74-1787', 'prod-mocha', 1, 16500, 0, '2026-01-12T19:34:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1787', 'hist-ticket-74-1787', 'cash', 48000, 'completed', '2026-01-12T19:34:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1788', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-12T13:36:09.000Z', '2026-01-12T13:36:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1788-1', 'hist-ticket-74-1788', 'prod-latte', 1, 15000, 0, '2026-01-12T13:36:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1788-2', 'hist-ticket-74-1788', 'prod-cappuccino', 1, 14500, 0, '2026-01-12T13:36:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1788-3', 'hist-ticket-74-1788', 'prod-cappuccino', 1, 14500, 0, '2026-01-12T13:36:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1788-4', 'hist-ticket-74-1788', 'prod-mocha', 1, 16500, 0, '2026-01-12T13:36:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1788', 'hist-ticket-74-1788', 'cash', 60500, 'completed', '2026-01-12T13:36:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1789', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-12T09:39:50.000Z', '2026-01-12T09:39:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1789-1', 'hist-ticket-74-1789', 'prod-mocha', 1, 16500, 0, '2026-01-12T09:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1789-2', 'hist-ticket-74-1789', 'prod-americano', 1, 12000, 0, '2026-01-12T09:39:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1789', 'hist-ticket-74-1789', 'cash', 28500, 'completed', '2026-01-12T09:39:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1790', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-12T15:29:30.000Z', '2026-01-12T15:29:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1790-1', 'hist-ticket-74-1790', 'prod-latte', 1, 15000, 0, '2026-01-12T15:29:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1790-2', 'hist-ticket-74-1790', 'prod-americano', 1, 12000, 0, '2026-01-12T15:29:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1790', 'hist-ticket-74-1790', 'cash', 27000, 'completed', '2026-01-12T15:29:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1791', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-12T14:29:16.000Z', '2026-01-12T14:29:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1791-1', 'hist-ticket-74-1791', 'prod-americano', 1, 12000, 0, '2026-01-12T14:29:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1791-2', 'hist-ticket-74-1791', 'prod-latte', 1, 15000, 0, '2026-01-12T14:29:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1791-3', 'hist-ticket-74-1791', 'prod-mocha', 1, 16500, 0, '2026-01-12T14:29:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1791-4', 'hist-ticket-74-1791', 'prod-cappuccino', 1, 14500, 0, '2026-01-12T14:29:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1791', 'hist-ticket-74-1791', 'cash', 58000, 'completed', '2026-01-12T14:29:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1792', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-01-12T09:25:31.000Z', '2026-01-12T09:25:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1792-1', 'hist-ticket-74-1792', 'prod-latte', 1, 15000, 0, '2026-01-12T09:25:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1792-2', 'hist-ticket-74-1792', 'prod-latte', 1, 15000, 0, '2026-01-12T09:25:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1792', 'hist-ticket-74-1792', 'cash', 30000, 'completed', '2026-01-12T09:25:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1793', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-12T12:01:02.000Z', '2026-01-12T12:01:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1793-1', 'hist-ticket-74-1793', 'prod-americano', 1, 12000, 0, '2026-01-12T12:01:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1793', 'hist-ticket-74-1793', 'cash', 12000, 'completed', '2026-01-12T12:01:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1794', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-12T12:28:28.000Z', '2026-01-12T12:28:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1794-1', 'hist-ticket-74-1794', 'prod-cappuccino', 1, 14500, 0, '2026-01-12T12:28:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1794', 'hist-ticket-74-1794', 'cash', 14500, 'completed', '2026-01-12T12:28:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1795', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-12T18:36:57.000Z', '2026-01-12T18:36:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1795-1', 'hist-ticket-74-1795', 'prod-cappuccino', 1, 14500, 0, '2026-01-12T18:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1795-2', 'hist-ticket-74-1795', 'prod-americano', 1, 12000, 0, '2026-01-12T18:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1795-3', 'hist-ticket-74-1795', 'prod-americano', 1, 12000, 0, '2026-01-12T18:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1795-4', 'hist-ticket-74-1795', 'prod-americano', 1, 12000, 0, '2026-01-12T18:36:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1795', 'hist-ticket-74-1795', 'cash', 50500, 'completed', '2026-01-12T18:36:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1796', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-12T11:12:57.000Z', '2026-01-12T11:12:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1796-1', 'hist-ticket-74-1796', 'prod-latte', 1, 15000, 0, '2026-01-12T11:12:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1796-2', 'hist-ticket-74-1796', 'prod-cappuccino', 1, 14500, 0, '2026-01-12T11:12:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1796', 'hist-ticket-74-1796', 'cash', 29500, 'completed', '2026-01-12T11:12:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1797', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-12T16:31:59.000Z', '2026-01-12T16:31:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1797-1', 'hist-ticket-74-1797', 'prod-mocha', 1, 16500, 0, '2026-01-12T16:31:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1797-2', 'hist-ticket-74-1797', 'prod-cappuccino', 1, 14500, 0, '2026-01-12T16:31:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1797-3', 'hist-ticket-74-1797', 'prod-americano', 1, 12000, 0, '2026-01-12T16:31:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1797', 'hist-ticket-74-1797', 'cash', 43000, 'completed', '2026-01-12T16:31:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1798', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-12T19:51:51.000Z', '2026-01-12T19:51:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1798-1', 'hist-ticket-74-1798', 'prod-mocha', 1, 16500, 0, '2026-01-12T19:51:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1798', 'hist-ticket-74-1798', 'cash', 16500, 'completed', '2026-01-12T19:51:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1799', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-12T17:42:15.000Z', '2026-01-12T17:42:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1799-1', 'hist-ticket-74-1799', 'prod-americano', 1, 12000, 0, '2026-01-12T17:42:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1799-2', 'hist-ticket-74-1799', 'prod-cappuccino', 1, 14500, 0, '2026-01-12T17:42:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1799', 'hist-ticket-74-1799', 'cash', 26500, 'completed', '2026-01-12T17:42:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1800', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-12T18:15:08.000Z', '2026-01-12T18:15:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1800-1', 'hist-ticket-74-1800', 'prod-mocha', 1, 16500, 0, '2026-01-12T18:15:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1800-2', 'hist-ticket-74-1800', 'prod-latte', 1, 15000, 0, '2026-01-12T18:15:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1800', 'hist-ticket-74-1800', 'cash', 31500, 'completed', '2026-01-12T18:15:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1801', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-01-12T08:34:45.000Z', '2026-01-12T08:34:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1801-1', 'hist-ticket-74-1801', 'prod-latte', 1, 15000, 0, '2026-01-12T08:34:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1801-2', 'hist-ticket-74-1801', 'prod-latte', 1, 15000, 0, '2026-01-12T08:34:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1801', 'hist-ticket-74-1801', 'cash', 30000, 'completed', '2026-01-12T08:34:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1802', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-12T12:02:48.000Z', '2026-01-12T12:02:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1802-1', 'hist-ticket-74-1802', 'prod-mocha', 1, 16500, 0, '2026-01-12T12:02:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1802-2', 'hist-ticket-74-1802', 'prod-latte', 1, 15000, 0, '2026-01-12T12:02:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1802-3', 'hist-ticket-74-1802', 'prod-mocha', 1, 16500, 0, '2026-01-12T12:02:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1802-4', 'hist-ticket-74-1802', 'prod-mocha', 1, 16500, 0, '2026-01-12T12:02:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1802', 'hist-ticket-74-1802', 'cash', 64500, 'completed', '2026-01-12T12:02:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1803', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-01-12T14:43:52.000Z', '2026-01-12T14:43:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1803-1', 'hist-ticket-74-1803', 'prod-latte', 1, 15000, 0, '2026-01-12T14:43:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1803', 'hist-ticket-74-1803', 'cash', 15000, 'completed', '2026-01-12T14:43:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-74-1804', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-12T15:23:07.000Z', '2026-01-12T15:23:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1804-1', 'hist-ticket-74-1804', 'prod-latte', 1, 15000, 0, '2026-01-12T15:23:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1804-2', 'hist-ticket-74-1804', 'prod-cappuccino', 1, 14500, 0, '2026-01-12T15:23:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1804-3', 'hist-ticket-74-1804', 'prod-mocha', 1, 16500, 0, '2026-01-12T15:23:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-74-1804-4', 'hist-ticket-74-1804', 'prod-americano', 1, 12000, 0, '2026-01-12T15:23:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-74-1804', 'hist-ticket-74-1804', 'cash', 58000, 'completed', '2026-01-12T15:23:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1805', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-01-13T10:22:35.000Z', '2026-01-13T10:22:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1805-1', 'hist-ticket-75-1805', 'prod-mocha', 1, 16500, 0, '2026-01-13T10:22:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1805-2', 'hist-ticket-75-1805', 'prod-latte', 1, 15000, 0, '2026-01-13T10:22:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1805-3', 'hist-ticket-75-1805', 'prod-americano', 1, 12000, 0, '2026-01-13T10:22:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1805', 'hist-ticket-75-1805', 'cash', 43500, 'completed', '2026-01-13T10:22:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1806', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-13T13:14:11.000Z', '2026-01-13T13:14:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1806-1', 'hist-ticket-75-1806', 'prod-mocha', 1, 16500, 0, '2026-01-13T13:14:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1806', 'hist-ticket-75-1806', 'cash', 16500, 'completed', '2026-01-13T13:14:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1807', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-13T18:56:31.000Z', '2026-01-13T18:56:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1807-1', 'hist-ticket-75-1807', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T18:56:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1807-2', 'hist-ticket-75-1807', 'prod-mocha', 1, 16500, 0, '2026-01-13T18:56:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1807-3', 'hist-ticket-75-1807', 'prod-americano', 1, 12000, 0, '2026-01-13T18:56:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1807-4', 'hist-ticket-75-1807', 'prod-mocha', 1, 16500, 0, '2026-01-13T18:56:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1807', 'hist-ticket-75-1807', 'cash', 59500, 'completed', '2026-01-13T18:56:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1808', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-13T09:36:47.000Z', '2026-01-13T09:36:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1808-1', 'hist-ticket-75-1808', 'prod-latte', 1, 15000, 0, '2026-01-13T09:36:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1808-2', 'hist-ticket-75-1808', 'prod-latte', 1, 15000, 0, '2026-01-13T09:36:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1808', 'hist-ticket-75-1808', 'cash', 30000, 'completed', '2026-01-13T09:36:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1809', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-13T18:28:59.000Z', '2026-01-13T18:28:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1809-1', 'hist-ticket-75-1809', 'prod-latte', 1, 15000, 0, '2026-01-13T18:28:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1809-2', 'hist-ticket-75-1809', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T18:28:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1809', 'hist-ticket-75-1809', 'cash', 29500, 'completed', '2026-01-13T18:28:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1810', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-13T13:02:29.000Z', '2026-01-13T13:02:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1810-1', 'hist-ticket-75-1810', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T13:02:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1810-2', 'hist-ticket-75-1810', 'prod-mocha', 1, 16500, 0, '2026-01-13T13:02:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1810-3', 'hist-ticket-75-1810', 'prod-mocha', 1, 16500, 0, '2026-01-13T13:02:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1810-4', 'hist-ticket-75-1810', 'prod-latte', 1, 15000, 0, '2026-01-13T13:02:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1810', 'hist-ticket-75-1810', 'cash', 62500, 'completed', '2026-01-13T13:02:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1811', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-01-13T16:53:50.000Z', '2026-01-13T16:53:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1811-1', 'hist-ticket-75-1811', 'prod-latte', 1, 15000, 0, '2026-01-13T16:53:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1811-2', 'hist-ticket-75-1811', 'prod-americano', 1, 12000, 0, '2026-01-13T16:53:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1811', 'hist-ticket-75-1811', 'cash', 27000, 'completed', '2026-01-13T16:53:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1812', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-13T08:42:42.000Z', '2026-01-13T08:42:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1812-1', 'hist-ticket-75-1812', 'prod-americano', 1, 12000, 0, '2026-01-13T08:42:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1812-2', 'hist-ticket-75-1812', 'prod-mocha', 1, 16500, 0, '2026-01-13T08:42:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1812-3', 'hist-ticket-75-1812', 'prod-americano', 1, 12000, 0, '2026-01-13T08:42:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1812-4', 'hist-ticket-75-1812', 'prod-americano', 1, 12000, 0, '2026-01-13T08:42:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1812', 'hist-ticket-75-1812', 'cash', 52500, 'completed', '2026-01-13T08:42:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1813', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-13T16:14:22.000Z', '2026-01-13T16:14:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1813-1', 'hist-ticket-75-1813', 'prod-americano', 1, 12000, 0, '2026-01-13T16:14:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1813-2', 'hist-ticket-75-1813', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T16:14:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1813-3', 'hist-ticket-75-1813', 'prod-mocha', 1, 16500, 0, '2026-01-13T16:14:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1813-4', 'hist-ticket-75-1813', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T16:14:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1813', 'hist-ticket-75-1813', 'cash', 57500, 'completed', '2026-01-13T16:14:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1814', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-13T13:00:14.000Z', '2026-01-13T13:00:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1814-1', 'hist-ticket-75-1814', 'prod-mocha', 1, 16500, 0, '2026-01-13T13:00:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1814-2', 'hist-ticket-75-1814', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T13:00:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1814-3', 'hist-ticket-75-1814', 'prod-mocha', 1, 16500, 0, '2026-01-13T13:00:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1814', 'hist-ticket-75-1814', 'cash', 47500, 'completed', '2026-01-13T13:00:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1815', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-13T11:13:22.000Z', '2026-01-13T11:13:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1815-1', 'hist-ticket-75-1815', 'prod-mocha', 1, 16500, 0, '2026-01-13T11:13:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1815-2', 'hist-ticket-75-1815', 'prod-mocha', 1, 16500, 0, '2026-01-13T11:13:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1815-3', 'hist-ticket-75-1815', 'prod-mocha', 1, 16500, 0, '2026-01-13T11:13:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1815', 'hist-ticket-75-1815', 'cash', 49500, 'completed', '2026-01-13T11:13:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1816', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-13T14:31:13.000Z', '2026-01-13T14:31:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1816-1', 'hist-ticket-75-1816', 'prod-americano', 1, 12000, 0, '2026-01-13T14:31:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1816-2', 'hist-ticket-75-1816', 'prod-mocha', 1, 16500, 0, '2026-01-13T14:31:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1816-3', 'hist-ticket-75-1816', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T14:31:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1816', 'hist-ticket-75-1816', 'cash', 43000, 'completed', '2026-01-13T14:31:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1817', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-13T14:43:34.000Z', '2026-01-13T14:43:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1817-1', 'hist-ticket-75-1817', 'prod-latte', 1, 15000, 0, '2026-01-13T14:43:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1817-2', 'hist-ticket-75-1817', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T14:43:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1817', 'hist-ticket-75-1817', 'cash', 29500, 'completed', '2026-01-13T14:43:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1818', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-13T08:38:27.000Z', '2026-01-13T08:38:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1818-1', 'hist-ticket-75-1818', 'prod-latte', 1, 15000, 0, '2026-01-13T08:38:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1818-2', 'hist-ticket-75-1818', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T08:38:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1818-3', 'hist-ticket-75-1818', 'prod-latte', 1, 15000, 0, '2026-01-13T08:38:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1818', 'hist-ticket-75-1818', 'cash', 44500, 'completed', '2026-01-13T08:38:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1819', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-13T17:46:54.000Z', '2026-01-13T17:46:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1819-1', 'hist-ticket-75-1819', 'prod-mocha', 1, 16500, 0, '2026-01-13T17:46:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1819', 'hist-ticket-75-1819', 'cash', 16500, 'completed', '2026-01-13T17:46:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1820', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-13T19:53:26.000Z', '2026-01-13T19:53:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1820-1', 'hist-ticket-75-1820', 'prod-latte', 1, 15000, 0, '2026-01-13T19:53:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1820-2', 'hist-ticket-75-1820', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T19:53:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1820', 'hist-ticket-75-1820', 'cash', 29500, 'completed', '2026-01-13T19:53:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1821', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-13T15:53:35.000Z', '2026-01-13T15:53:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1821-1', 'hist-ticket-75-1821', 'prod-mocha', 1, 16500, 0, '2026-01-13T15:53:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1821', 'hist-ticket-75-1821', 'cash', 16500, 'completed', '2026-01-13T15:53:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1822', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-01-13T11:54:27.000Z', '2026-01-13T11:54:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1822-1', 'hist-ticket-75-1822', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T11:54:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1822-2', 'hist-ticket-75-1822', 'prod-americano', 1, 12000, 0, '2026-01-13T11:54:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1822-3', 'hist-ticket-75-1822', 'prod-americano', 1, 12000, 0, '2026-01-13T11:54:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1822-4', 'hist-ticket-75-1822', 'prod-mocha', 1, 16500, 0, '2026-01-13T11:54:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1822', 'hist-ticket-75-1822', 'cash', 55000, 'completed', '2026-01-13T11:54:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-75-1823', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-01-13T11:41:45.000Z', '2026-01-13T11:41:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1823-1', 'hist-ticket-75-1823', 'prod-latte', 1, 15000, 0, '2026-01-13T11:41:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1823-2', 'hist-ticket-75-1823', 'prod-americano', 1, 12000, 0, '2026-01-13T11:41:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1823-3', 'hist-ticket-75-1823', 'prod-mocha', 1, 16500, 0, '2026-01-13T11:41:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-75-1823-4', 'hist-ticket-75-1823', 'prod-cappuccino', 1, 14500, 0, '2026-01-13T11:41:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-75-1823', 'hist-ticket-75-1823', 'cash', 58000, 'completed', '2026-01-13T11:41:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1824', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-14T11:14:13.000Z', '2026-01-14T11:14:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1824-1', 'hist-ticket-76-1824', 'prod-mocha', 1, 16500, 0, '2026-01-14T11:14:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1824-2', 'hist-ticket-76-1824', 'prod-mocha', 1, 16500, 0, '2026-01-14T11:14:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1824-3', 'hist-ticket-76-1824', 'prod-latte', 1, 15000, 0, '2026-01-14T11:14:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1824', 'hist-ticket-76-1824', 'cash', 48000, 'completed', '2026-01-14T11:14:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1825', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-14T11:10:56.000Z', '2026-01-14T11:10:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1825-1', 'hist-ticket-76-1825', 'prod-latte', 1, 15000, 0, '2026-01-14T11:10:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1825-2', 'hist-ticket-76-1825', 'prod-americano', 1, 12000, 0, '2026-01-14T11:10:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1825-3', 'hist-ticket-76-1825', 'prod-latte', 1, 15000, 0, '2026-01-14T11:10:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1825', 'hist-ticket-76-1825', 'cash', 42000, 'completed', '2026-01-14T11:10:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1826', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-14T19:26:23.000Z', '2026-01-14T19:26:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1826-1', 'hist-ticket-76-1826', 'prod-americano', 1, 12000, 0, '2026-01-14T19:26:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1826-2', 'hist-ticket-76-1826', 'prod-americano', 1, 12000, 0, '2026-01-14T19:26:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1826', 'hist-ticket-76-1826', 'cash', 24000, 'completed', '2026-01-14T19:26:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1827', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-01-14T12:38:45.000Z', '2026-01-14T12:38:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1827-1', 'hist-ticket-76-1827', 'prod-latte', 1, 15000, 0, '2026-01-14T12:38:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1827-2', 'hist-ticket-76-1827', 'prod-latte', 1, 15000, 0, '2026-01-14T12:38:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1827-3', 'hist-ticket-76-1827', 'prod-latte', 1, 15000, 0, '2026-01-14T12:38:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1827-4', 'hist-ticket-76-1827', 'prod-americano', 1, 12000, 0, '2026-01-14T12:38:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1827', 'hist-ticket-76-1827', 'cash', 57000, 'completed', '2026-01-14T12:38:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1828', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-01-14T10:54:20.000Z', '2026-01-14T10:54:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1828-1', 'hist-ticket-76-1828', 'prod-americano', 1, 12000, 0, '2026-01-14T10:54:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1828', 'hist-ticket-76-1828', 'cash', 12000, 'completed', '2026-01-14T10:54:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1829', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-14T19:56:26.000Z', '2026-01-14T19:56:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1829-1', 'hist-ticket-76-1829', 'prod-mocha', 1, 16500, 0, '2026-01-14T19:56:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1829', 'hist-ticket-76-1829', 'cash', 16500, 'completed', '2026-01-14T19:56:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1830', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-14T18:56:52.000Z', '2026-01-14T18:56:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1830-1', 'hist-ticket-76-1830', 'prod-latte', 1, 15000, 0, '2026-01-14T18:56:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1830-2', 'hist-ticket-76-1830', 'prod-latte', 1, 15000, 0, '2026-01-14T18:56:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1830-3', 'hist-ticket-76-1830', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T18:56:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1830-4', 'hist-ticket-76-1830', 'prod-americano', 1, 12000, 0, '2026-01-14T18:56:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1830', 'hist-ticket-76-1830', 'cash', 56500, 'completed', '2026-01-14T18:56:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1831', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-01-14T08:41:53.000Z', '2026-01-14T08:41:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1831-1', 'hist-ticket-76-1831', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T08:41:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1831-2', 'hist-ticket-76-1831', 'prod-americano', 1, 12000, 0, '2026-01-14T08:41:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1831', 'hist-ticket-76-1831', 'cash', 26500, 'completed', '2026-01-14T08:41:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1832', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-14T15:55:57.000Z', '2026-01-14T15:55:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1832-1', 'hist-ticket-76-1832', 'prod-americano', 1, 12000, 0, '2026-01-14T15:55:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1832-2', 'hist-ticket-76-1832', 'prod-americano', 1, 12000, 0, '2026-01-14T15:55:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1832', 'hist-ticket-76-1832', 'cash', 24000, 'completed', '2026-01-14T15:55:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1833', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-14T11:55:34.000Z', '2026-01-14T11:55:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1833-1', 'hist-ticket-76-1833', 'prod-mocha', 1, 16500, 0, '2026-01-14T11:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1833-2', 'hist-ticket-76-1833', 'prod-mocha', 1, 16500, 0, '2026-01-14T11:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1833-3', 'hist-ticket-76-1833', 'prod-mocha', 1, 16500, 0, '2026-01-14T11:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1833-4', 'hist-ticket-76-1833', 'prod-americano', 1, 12000, 0, '2026-01-14T11:55:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1833', 'hist-ticket-76-1833', 'cash', 61500, 'completed', '2026-01-14T11:55:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1834', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-01-14T11:16:40.000Z', '2026-01-14T11:16:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1834-1', 'hist-ticket-76-1834', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T11:16:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1834-2', 'hist-ticket-76-1834', 'prod-americano', 1, 12000, 0, '2026-01-14T11:16:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1834-3', 'hist-ticket-76-1834', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T11:16:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1834-4', 'hist-ticket-76-1834', 'prod-latte', 1, 15000, 0, '2026-01-14T11:16:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1834', 'hist-ticket-76-1834', 'cash', 56000, 'completed', '2026-01-14T11:16:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1835', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-14T10:32:25.000Z', '2026-01-14T10:32:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1835-1', 'hist-ticket-76-1835', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T10:32:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1835', 'hist-ticket-76-1835', 'cash', 14500, 'completed', '2026-01-14T10:32:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1836', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-14T19:54:40.000Z', '2026-01-14T19:54:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1836-1', 'hist-ticket-76-1836', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T19:54:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1836-2', 'hist-ticket-76-1836', 'prod-mocha', 1, 16500, 0, '2026-01-14T19:54:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1836-3', 'hist-ticket-76-1836', 'prod-mocha', 1, 16500, 0, '2026-01-14T19:54:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1836-4', 'hist-ticket-76-1836', 'prod-americano', 1, 12000, 0, '2026-01-14T19:54:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1836', 'hist-ticket-76-1836', 'cash', 59500, 'completed', '2026-01-14T19:54:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1837', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-01-14T16:56:42.000Z', '2026-01-14T16:56:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1837-1', 'hist-ticket-76-1837', 'prod-mocha', 1, 16500, 0, '2026-01-14T16:56:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1837-2', 'hist-ticket-76-1837', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T16:56:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1837-3', 'hist-ticket-76-1837', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T16:56:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1837-4', 'hist-ticket-76-1837', 'prod-latte', 1, 15000, 0, '2026-01-14T16:56:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1837', 'hist-ticket-76-1837', 'cash', 60500, 'completed', '2026-01-14T16:56:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1838', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-14T10:35:43.000Z', '2026-01-14T10:35:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1838-1', 'hist-ticket-76-1838', 'prod-latte', 1, 15000, 0, '2026-01-14T10:35:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1838-2', 'hist-ticket-76-1838', 'prod-latte', 1, 15000, 0, '2026-01-14T10:35:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1838-3', 'hist-ticket-76-1838', 'prod-americano', 1, 12000, 0, '2026-01-14T10:35:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1838-4', 'hist-ticket-76-1838', 'prod-mocha', 1, 16500, 0, '2026-01-14T10:35:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1838', 'hist-ticket-76-1838', 'cash', 58500, 'completed', '2026-01-14T10:35:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1839', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-14T09:01:46.000Z', '2026-01-14T09:01:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1839-1', 'hist-ticket-76-1839', 'prod-mocha', 1, 16500, 0, '2026-01-14T09:01:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1839-2', 'hist-ticket-76-1839', 'prod-mocha', 1, 16500, 0, '2026-01-14T09:01:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1839-3', 'hist-ticket-76-1839', 'prod-latte', 1, 15000, 0, '2026-01-14T09:01:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1839-4', 'hist-ticket-76-1839', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T09:01:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1839', 'hist-ticket-76-1839', 'cash', 62500, 'completed', '2026-01-14T09:01:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1840', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-14T11:36:01.000Z', '2026-01-14T11:36:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1840-1', 'hist-ticket-76-1840', 'prod-americano', 1, 12000, 0, '2026-01-14T11:36:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1840', 'hist-ticket-76-1840', 'cash', 12000, 'completed', '2026-01-14T11:36:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1841', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-14T19:59:27.000Z', '2026-01-14T19:59:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1841-1', 'hist-ticket-76-1841', 'prod-latte', 1, 15000, 0, '2026-01-14T19:59:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1841-2', 'hist-ticket-76-1841', 'prod-americano', 1, 12000, 0, '2026-01-14T19:59:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1841', 'hist-ticket-76-1841', 'cash', 27000, 'completed', '2026-01-14T19:59:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1842', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-14T16:49:41.000Z', '2026-01-14T16:49:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1842-1', 'hist-ticket-76-1842', 'prod-mocha', 1, 16500, 0, '2026-01-14T16:49:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1842-2', 'hist-ticket-76-1842', 'prod-mocha', 1, 16500, 0, '2026-01-14T16:49:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1842', 'hist-ticket-76-1842', 'cash', 33000, 'completed', '2026-01-14T16:49:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1843', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-14T12:50:38.000Z', '2026-01-14T12:50:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1843-1', 'hist-ticket-76-1843', 'prod-mocha', 1, 16500, 0, '2026-01-14T12:50:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1843', 'hist-ticket-76-1843', 'cash', 16500, 'completed', '2026-01-14T12:50:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1844', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-14T19:56:26.000Z', '2026-01-14T19:56:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1844-1', 'hist-ticket-76-1844', 'prod-americano', 1, 12000, 0, '2026-01-14T19:56:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1844-2', 'hist-ticket-76-1844', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T19:56:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1844-3', 'hist-ticket-76-1844', 'prod-latte', 1, 15000, 0, '2026-01-14T19:56:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1844-4', 'hist-ticket-76-1844', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T19:56:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1844', 'hist-ticket-76-1844', 'cash', 56000, 'completed', '2026-01-14T19:56:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1845', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-14T09:53:34.000Z', '2026-01-14T09:53:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1845-1', 'hist-ticket-76-1845', 'prod-mocha', 1, 16500, 0, '2026-01-14T09:53:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1845-2', 'hist-ticket-76-1845', 'prod-mocha', 1, 16500, 0, '2026-01-14T09:53:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1845-3', 'hist-ticket-76-1845', 'prod-americano', 1, 12000, 0, '2026-01-14T09:53:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1845-4', 'hist-ticket-76-1845', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T09:53:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1845', 'hist-ticket-76-1845', 'cash', 59500, 'completed', '2026-01-14T09:53:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1846', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-14T19:19:35.000Z', '2026-01-14T19:19:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1846-1', 'hist-ticket-76-1846', 'prod-latte', 1, 15000, 0, '2026-01-14T19:19:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1846-2', 'hist-ticket-76-1846', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T19:19:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1846', 'hist-ticket-76-1846', 'cash', 29500, 'completed', '2026-01-14T19:19:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1847', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-14T17:57:33.000Z', '2026-01-14T17:57:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1847-1', 'hist-ticket-76-1847', 'prod-latte', 1, 15000, 0, '2026-01-14T17:57:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1847-2', 'hist-ticket-76-1847', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T17:57:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1847', 'hist-ticket-76-1847', 'cash', 29500, 'completed', '2026-01-14T17:57:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-76-1848', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-01-14T15:50:18.000Z', '2026-01-14T15:50:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1848-1', 'hist-ticket-76-1848', 'prod-cappuccino', 1, 14500, 0, '2026-01-14T15:50:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-76-1848-2', 'hist-ticket-76-1848', 'prod-americano', 1, 12000, 0, '2026-01-14T15:50:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-76-1848', 'hist-ticket-76-1848', 'cash', 26500, 'completed', '2026-01-14T15:50:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1849', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-15T13:40:58.000Z', '2026-01-15T13:40:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1849-1', 'hist-ticket-77-1849', 'prod-mocha', 1, 16500, 0, '2026-01-15T13:40:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1849-2', 'hist-ticket-77-1849', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T13:40:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1849-3', 'hist-ticket-77-1849', 'prod-mocha', 1, 16500, 0, '2026-01-15T13:40:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1849', 'hist-ticket-77-1849', 'cash', 47500, 'completed', '2026-01-15T13:40:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1850', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-01-15T12:50:52.000Z', '2026-01-15T12:50:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1850-1', 'hist-ticket-77-1850', 'prod-mocha', 1, 16500, 0, '2026-01-15T12:50:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1850-2', 'hist-ticket-77-1850', 'prod-mocha', 1, 16500, 0, '2026-01-15T12:50:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1850', 'hist-ticket-77-1850', 'cash', 33000, 'completed', '2026-01-15T12:50:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1851', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-15T17:15:36.000Z', '2026-01-15T17:15:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1851-1', 'hist-ticket-77-1851', 'prod-mocha', 1, 16500, 0, '2026-01-15T17:15:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1851', 'hist-ticket-77-1851', 'cash', 16500, 'completed', '2026-01-15T17:15:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1852', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-15T13:21:15.000Z', '2026-01-15T13:21:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1852-1', 'hist-ticket-77-1852', 'prod-latte', 1, 15000, 0, '2026-01-15T13:21:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1852', 'hist-ticket-77-1852', 'cash', 15000, 'completed', '2026-01-15T13:21:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1853', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-15T18:09:06.000Z', '2026-01-15T18:09:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1853-1', 'hist-ticket-77-1853', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T18:09:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1853-2', 'hist-ticket-77-1853', 'prod-mocha', 1, 16500, 0, '2026-01-15T18:09:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1853-3', 'hist-ticket-77-1853', 'prod-americano', 1, 12000, 0, '2026-01-15T18:09:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1853', 'hist-ticket-77-1853', 'cash', 43000, 'completed', '2026-01-15T18:09:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1854', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-15T19:09:16.000Z', '2026-01-15T19:09:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1854-1', 'hist-ticket-77-1854', 'prod-americano', 1, 12000, 0, '2026-01-15T19:09:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1854', 'hist-ticket-77-1854', 'cash', 12000, 'completed', '2026-01-15T19:09:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1855', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-15T10:21:03.000Z', '2026-01-15T10:21:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1855-1', 'hist-ticket-77-1855', 'prod-americano', 1, 12000, 0, '2026-01-15T10:21:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1855-2', 'hist-ticket-77-1855', 'prod-mocha', 1, 16500, 0, '2026-01-15T10:21:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1855-3', 'hist-ticket-77-1855', 'prod-americano', 1, 12000, 0, '2026-01-15T10:21:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1855-4', 'hist-ticket-77-1855', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T10:21:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1855', 'hist-ticket-77-1855', 'cash', 55000, 'completed', '2026-01-15T10:21:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1856', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-15T19:15:29.000Z', '2026-01-15T19:15:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1856-1', 'hist-ticket-77-1856', 'prod-americano', 1, 12000, 0, '2026-01-15T19:15:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1856-2', 'hist-ticket-77-1856', 'prod-latte', 1, 15000, 0, '2026-01-15T19:15:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1856-3', 'hist-ticket-77-1856', 'prod-americano', 1, 12000, 0, '2026-01-15T19:15:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1856', 'hist-ticket-77-1856', 'cash', 39000, 'completed', '2026-01-15T19:15:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1857', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-15T09:03:08.000Z', '2026-01-15T09:03:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1857-1', 'hist-ticket-77-1857', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T09:03:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1857-2', 'hist-ticket-77-1857', 'prod-latte', 1, 15000, 0, '2026-01-15T09:03:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1857', 'hist-ticket-77-1857', 'cash', 29500, 'completed', '2026-01-15T09:03:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1858', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-15T15:18:42.000Z', '2026-01-15T15:18:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1858-1', 'hist-ticket-77-1858', 'prod-latte', 1, 15000, 0, '2026-01-15T15:18:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1858-2', 'hist-ticket-77-1858', 'prod-latte', 1, 15000, 0, '2026-01-15T15:18:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1858', 'hist-ticket-77-1858', 'cash', 30000, 'completed', '2026-01-15T15:18:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1859', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-15T16:30:07.000Z', '2026-01-15T16:30:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1859-1', 'hist-ticket-77-1859', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T16:30:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1859', 'hist-ticket-77-1859', 'cash', 14500, 'completed', '2026-01-15T16:30:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1860', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-01-15T13:59:44.000Z', '2026-01-15T13:59:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1860-1', 'hist-ticket-77-1860', 'prod-americano', 1, 12000, 0, '2026-01-15T13:59:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1860', 'hist-ticket-77-1860', 'cash', 12000, 'completed', '2026-01-15T13:59:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1861', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-15T12:48:53.000Z', '2026-01-15T12:48:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1861-1', 'hist-ticket-77-1861', 'prod-latte', 1, 15000, 0, '2026-01-15T12:48:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1861', 'hist-ticket-77-1861', 'cash', 15000, 'completed', '2026-01-15T12:48:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1862', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-15T08:49:08.000Z', '2026-01-15T08:49:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1862-1', 'hist-ticket-77-1862', 'prod-latte', 1, 15000, 0, '2026-01-15T08:49:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1862-2', 'hist-ticket-77-1862', 'prod-americano', 1, 12000, 0, '2026-01-15T08:49:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1862', 'hist-ticket-77-1862', 'cash', 27000, 'completed', '2026-01-15T08:49:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1863', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-15T19:27:54.000Z', '2026-01-15T19:27:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1863-1', 'hist-ticket-77-1863', 'prod-americano', 1, 12000, 0, '2026-01-15T19:27:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1863-2', 'hist-ticket-77-1863', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T19:27:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1863', 'hist-ticket-77-1863', 'cash', 26500, 'completed', '2026-01-15T19:27:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1864', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-01-15T14:57:57.000Z', '2026-01-15T14:57:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1864-1', 'hist-ticket-77-1864', 'prod-americano', 1, 12000, 0, '2026-01-15T14:57:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1864-2', 'hist-ticket-77-1864', 'prod-mocha', 1, 16500, 0, '2026-01-15T14:57:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1864-3', 'hist-ticket-77-1864', 'prod-americano', 1, 12000, 0, '2026-01-15T14:57:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1864-4', 'hist-ticket-77-1864', 'prod-mocha', 1, 16500, 0, '2026-01-15T14:57:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1864', 'hist-ticket-77-1864', 'cash', 57000, 'completed', '2026-01-15T14:57:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1865', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-15T08:17:49.000Z', '2026-01-15T08:17:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1865-1', 'hist-ticket-77-1865', 'prod-mocha', 1, 16500, 0, '2026-01-15T08:17:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1865', 'hist-ticket-77-1865', 'cash', 16500, 'completed', '2026-01-15T08:17:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1866', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-15T16:11:00.000Z', '2026-01-15T16:11:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1866-1', 'hist-ticket-77-1866', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T16:11:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1866-2', 'hist-ticket-77-1866', 'prod-americano', 1, 12000, 0, '2026-01-15T16:11:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1866', 'hist-ticket-77-1866', 'cash', 26500, 'completed', '2026-01-15T16:11:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1867', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-15T14:14:12.000Z', '2026-01-15T14:14:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1867-1', 'hist-ticket-77-1867', 'prod-latte', 1, 15000, 0, '2026-01-15T14:14:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1867-2', 'hist-ticket-77-1867', 'prod-americano', 1, 12000, 0, '2026-01-15T14:14:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1867-3', 'hist-ticket-77-1867', 'prod-americano', 1, 12000, 0, '2026-01-15T14:14:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1867', 'hist-ticket-77-1867', 'cash', 39000, 'completed', '2026-01-15T14:14:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1868', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-01-15T16:42:18.000Z', '2026-01-15T16:42:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1868-1', 'hist-ticket-77-1868', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T16:42:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1868-2', 'hist-ticket-77-1868', 'prod-latte', 1, 15000, 0, '2026-01-15T16:42:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1868-3', 'hist-ticket-77-1868', 'prod-americano', 1, 12000, 0, '2026-01-15T16:42:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1868', 'hist-ticket-77-1868', 'cash', 41500, 'completed', '2026-01-15T16:42:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1869', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-01-15T13:56:25.000Z', '2026-01-15T13:56:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1869-1', 'hist-ticket-77-1869', 'prod-americano', 1, 12000, 0, '2026-01-15T13:56:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1869-2', 'hist-ticket-77-1869', 'prod-latte', 1, 15000, 0, '2026-01-15T13:56:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1869-3', 'hist-ticket-77-1869', 'prod-mocha', 1, 16500, 0, '2026-01-15T13:56:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1869-4', 'hist-ticket-77-1869', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T13:56:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1869', 'hist-ticket-77-1869', 'cash', 58000, 'completed', '2026-01-15T13:56:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-77-1870', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-15T08:16:06.000Z', '2026-01-15T08:16:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1870-1', 'hist-ticket-77-1870', 'prod-cappuccino', 1, 14500, 0, '2026-01-15T08:16:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-77-1870-2', 'hist-ticket-77-1870', 'prod-americano', 1, 12000, 0, '2026-01-15T08:16:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-77-1870', 'hist-ticket-77-1870', 'cash', 26500, 'completed', '2026-01-15T08:16:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1871', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-16T08:38:54.000Z', '2026-01-16T08:38:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1871-1', 'hist-ticket-78-1871', 'prod-americano', 1, 12000, 0, '2026-01-16T08:38:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1871-2', 'hist-ticket-78-1871', 'prod-mocha', 1, 16500, 0, '2026-01-16T08:38:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1871', 'hist-ticket-78-1871', 'cash', 28500, 'completed', '2026-01-16T08:38:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1872', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-16T15:35:56.000Z', '2026-01-16T15:35:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1872-1', 'hist-ticket-78-1872', 'prod-americano', 1, 12000, 0, '2026-01-16T15:35:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1872-2', 'hist-ticket-78-1872', 'prod-mocha', 1, 16500, 0, '2026-01-16T15:35:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1872', 'hist-ticket-78-1872', 'cash', 28500, 'completed', '2026-01-16T15:35:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1873', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-16T10:24:56.000Z', '2026-01-16T10:24:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1873-1', 'hist-ticket-78-1873', 'prod-americano', 1, 12000, 0, '2026-01-16T10:24:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1873-2', 'hist-ticket-78-1873', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T10:24:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1873-3', 'hist-ticket-78-1873', 'prod-latte', 1, 15000, 0, '2026-01-16T10:24:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1873-4', 'hist-ticket-78-1873', 'prod-americano', 1, 12000, 0, '2026-01-16T10:24:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1873', 'hist-ticket-78-1873', 'cash', 53500, 'completed', '2026-01-16T10:24:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1874', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-16T19:37:10.000Z', '2026-01-16T19:37:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1874-1', 'hist-ticket-78-1874', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T19:37:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1874-2', 'hist-ticket-78-1874', 'prod-mocha', 1, 16500, 0, '2026-01-16T19:37:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1874-3', 'hist-ticket-78-1874', 'prod-mocha', 1, 16500, 0, '2026-01-16T19:37:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1874', 'hist-ticket-78-1874', 'cash', 47500, 'completed', '2026-01-16T19:37:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1875', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-16T17:41:25.000Z', '2026-01-16T17:41:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1875-1', 'hist-ticket-78-1875', 'prod-latte', 1, 15000, 0, '2026-01-16T17:41:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1875-2', 'hist-ticket-78-1875', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T17:41:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1875', 'hist-ticket-78-1875', 'cash', 29500, 'completed', '2026-01-16T17:41:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1876', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-16T19:51:56.000Z', '2026-01-16T19:51:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1876-1', 'hist-ticket-78-1876', 'prod-americano', 1, 12000, 0, '2026-01-16T19:51:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1876-2', 'hist-ticket-78-1876', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T19:51:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1876-3', 'hist-ticket-78-1876', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T19:51:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1876', 'hist-ticket-78-1876', 'cash', 41000, 'completed', '2026-01-16T19:51:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1877', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-16T14:10:05.000Z', '2026-01-16T14:10:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1877-1', 'hist-ticket-78-1877', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T14:10:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1877-2', 'hist-ticket-78-1877', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T14:10:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1877', 'hist-ticket-78-1877', 'cash', 29000, 'completed', '2026-01-16T14:10:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1878', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-16T13:00:31.000Z', '2026-01-16T13:00:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1878-1', 'hist-ticket-78-1878', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T13:00:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1878', 'hist-ticket-78-1878', 'cash', 14500, 'completed', '2026-01-16T13:00:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1879', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-01-16T08:30:33.000Z', '2026-01-16T08:30:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1879-1', 'hist-ticket-78-1879', 'prod-latte', 1, 15000, 0, '2026-01-16T08:30:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1879-2', 'hist-ticket-78-1879', 'prod-mocha', 1, 16500, 0, '2026-01-16T08:30:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1879-3', 'hist-ticket-78-1879', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T08:30:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1879-4', 'hist-ticket-78-1879', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T08:30:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1879', 'hist-ticket-78-1879', 'cash', 60500, 'completed', '2026-01-16T08:30:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1880', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-01-16T11:29:48.000Z', '2026-01-16T11:29:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1880-1', 'hist-ticket-78-1880', 'prod-mocha', 1, 16500, 0, '2026-01-16T11:29:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1880-2', 'hist-ticket-78-1880', 'prod-americano', 1, 12000, 0, '2026-01-16T11:29:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1880-3', 'hist-ticket-78-1880', 'prod-mocha', 1, 16500, 0, '2026-01-16T11:29:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1880-4', 'hist-ticket-78-1880', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T11:29:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1880', 'hist-ticket-78-1880', 'cash', 59500, 'completed', '2026-01-16T11:29:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1881', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-16T14:17:16.000Z', '2026-01-16T14:17:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1881-1', 'hist-ticket-78-1881', 'prod-cappuccino', 1, 14500, 0, '2026-01-16T14:17:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1881', 'hist-ticket-78-1881', 'cash', 14500, 'completed', '2026-01-16T14:17:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1882', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-01-16T15:59:25.000Z', '2026-01-16T15:59:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1882-1', 'hist-ticket-78-1882', 'prod-mocha', 1, 16500, 0, '2026-01-16T15:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1882-2', 'hist-ticket-78-1882', 'prod-latte', 1, 15000, 0, '2026-01-16T15:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1882-3', 'hist-ticket-78-1882', 'prod-mocha', 1, 16500, 0, '2026-01-16T15:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1882-4', 'hist-ticket-78-1882', 'prod-mocha', 1, 16500, 0, '2026-01-16T15:59:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1882', 'hist-ticket-78-1882', 'cash', 64500, 'completed', '2026-01-16T15:59:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1883', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-01-16T16:21:40.000Z', '2026-01-16T16:21:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1883-1', 'hist-ticket-78-1883', 'prod-mocha', 1, 16500, 0, '2026-01-16T16:21:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1883-2', 'hist-ticket-78-1883', 'prod-americano', 1, 12000, 0, '2026-01-16T16:21:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-78-1883-3', 'hist-ticket-78-1883', 'prod-latte', 1, 15000, 0, '2026-01-16T16:21:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-78-1883', 'hist-ticket-78-1883', 'cash', 43500, 'completed', '2026-01-16T16:21:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-78-1884', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-16T09:08:00.000Z', '2026-01-16T09:08:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;