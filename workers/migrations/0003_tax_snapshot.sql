-- Persist VAT total when ticket is paid (for EOD / reporting without recomputing lines)
ALTER TABLE tickets ADD COLUMN tax_centavos_snapshot INTEGER NOT NULL DEFAULT 0;
