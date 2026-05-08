ALTER TABLE tickets ADD COLUMN ticket_no INTEGER;
CREATE INDEX idx_tickets_org_ticket_no ON tickets(org_id, ticket_no);
