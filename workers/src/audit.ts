export async function writeAudit(input: {
  db: D1Database;
  orgId: string;
  userId?: string;
  registerId?: string;
  action: string;
  entityType?: string;
  entityId?: string;
  payload?: unknown;
  idempotencyKey?: string;
}) {
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await input.db
    .prepare(
      `INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, payload_json, idempotency_key, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
    )
    .bind(
      id,
      input.orgId,
      input.userId ?? null,
      input.registerId ?? null,
      input.action,
      input.entityType ?? null,
      input.entityId ?? null,
      input.payload !== undefined ? JSON.stringify(input.payload) : null,
      input.idempotencyKey ?? null,
      now,
    )
    .run();
}
