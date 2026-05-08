WITH base AS (
  SELECT org_id, COALESCE(MAX(ticket_no), 0) AS base_no
  FROM tickets
  GROUP BY org_id
),
missing AS (
  SELECT
    t.id,
    t.org_id,
    ROW_NUMBER() OVER (PARTITION BY t.org_id ORDER BY t.created_at, t.id) AS rn
  FROM tickets t
  WHERE t.ticket_no IS NULL
)
UPDATE tickets
SET ticket_no = (
  SELECT b.base_no + m.rn
  FROM missing m
  JOIN base b ON b.org_id = m.org_id
  WHERE m.id = tickets.id
)
WHERE ticket_no IS NULL;
