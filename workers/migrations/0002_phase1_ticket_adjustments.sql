-- Phase 1: order-level discount, service charge, tip (stored as centavos on ticket)
ALTER TABLE tickets ADD COLUMN order_discount_centavos INTEGER NOT NULL DEFAULT 0;
ALTER TABLE tickets ADD COLUMN service_charge_centavos INTEGER NOT NULL DEFAULT 0;
ALTER TABLE tickets ADD COLUMN tip_centavos INTEGER NOT NULL DEFAULT 0;
