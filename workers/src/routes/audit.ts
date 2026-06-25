import { Hono } from "hono";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import type { AppEnv } from "../ctx.js";

function dateClause(dateFrom: string | undefined, dateTo: string | undefined, dateMonth: string | undefined, alias = "a"): string {
  if (dateFrom && dateTo) {
    return `AND date(${alias}.created_at) >= '${dateFrom}' AND date(${alias}.created_at) <= '${dateTo}'`;
  }
  if (dateMonth) {
    return `AND strftime('%Y-%m', ${alias}.created_at) = '${dateMonth}'`;
  }
  return "";
}

export const auditRoutes = new Hono<AppEnv>();

auditRoutes.get("/", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const limit = Math.min(500, Number(c.req.query("limit") ?? "100"));
  
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const dc = dateClause(dateFrom, dateTo, dateMonth, "a");
  
  const rows = await c.env.DB.prepare(
    `SELECT a.id, a.user_id, u.display_name as user_name, a.register_id, a.action, a.entity_type, a.entity_id, a.payload_json, a.created_at,
            COALESCE(t.ticket_no, t_line.ticket_no, CAST(json_extract(a.payload_json, '$.ticketNo') AS INTEGER)) as ticket_no,
            t.parked_label as ticket_parked_label,
            t.ticket_type as ticket_type,
            li.ticket_id as line_ticket_id,
            li.qty as line_qty,
            li.unit_price_centavos as line_unit_price_centavos,
            li.discount_centavos as line_discount_centavos,
            li.void_reason as line_void_reason,
            p.name as line_product_name,
            p_audit.name as audit_product_name,
            p_audit.price_centavos as audit_product_price_centavos,
            p_audit.sku as audit_product_sku,
            p_audit.barcode as audit_product_barcode,
            rf_refund.amount_centavos as audit_refund_amount_centavos,
            rf_refund.reason as audit_refund_reason,
            rf_refund.note as audit_refund_note,
            cat.name as audit_category_name,
            staff.staff_code as audit_staff_code,
            staff.display_name as audit_staff_display_name,
            staff.role as audit_staff_role,
            (SELECT GROUP_CONCAT(li2.qty || 'x ' || p2.name, ', ') FROM line_items li2 JOIN products p2 ON p2.id = li2.product_id WHERE li2.ticket_id = COALESCE(t.id, a.entity_id) AND li2.voided = 0) as audit_ticket_products,
            (SELECT COALESCE(SUM(li2.unit_price_centavos * li2.qty - li2.discount_centavos), 0) FROM line_items li2 WHERE li2.ticket_id = COALESCE(t.id, a.entity_id) AND li2.voided = 0) as audit_ticket_due_centavos
     FROM audit_events a
     LEFT JOIN users u ON a.user_id = u.id
     LEFT JOIN refunds rf ON a.action = 'refund.create' AND a.entity_id = rf.id
     LEFT JOIN refunds rf_refund ON a.action = 'ticket.refund' AND rf_refund.id = json_extract(a.payload_json, '$.refundId')
     LEFT JOIN tickets t ON t.org_id = a.org_id AND (t.id = a.entity_id OR t.id = rf.ticket_id)
     LEFT JOIN line_items li ON a.action = 'line.void' AND a.entity_id = li.id
     LEFT JOIN products p ON li.product_id = p.id
     LEFT JOIN products p_audit ON a.action IN ('product.update', 'product.create', 'product.archive') AND a.entity_id = p_audit.id AND p_audit.org_id = a.org_id
     LEFT JOIN categories cat ON a.action IN ('category.create', 'category.archive') AND a.entity_id = cat.id AND cat.org_id = a.org_id
     LEFT JOIN users staff ON a.action = 'staff.create' AND a.entity_id = staff.id AND staff.org_id = a.org_id
     LEFT JOIN tickets t_line ON li.ticket_id = t_line.id AND t_line.org_id = a.org_id
     WHERE a.org_id = ? ${dc}
     ORDER BY a.created_at DESC 
     LIMIT ?`
  )
    .bind(auth.orgId, limit)
    .all();
    
  return c.json({ events: rows.results ?? [] });
});
