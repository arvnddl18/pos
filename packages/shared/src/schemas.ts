import { z } from "zod";

export const RoleSchema = z.enum(["cashier", "barista", "manager", "owner"]);

export const LoginSchema = z.object({
  pin: z.string().min(4).max(32),
  staffCode: z.string().min(1).max(32),
});

export const TicketTypeSchema = z.enum(["dine_in", "takeout", "delivery"]);

export const PaymentStatusSchema = z.enum([
  "pending_ewallet",
  "completed",
  "failed",
  "cancelled",
]);

export const TenderTypeSchema = z.enum(["cash", "e_wallet_personal", "e_wallet_merchant"]);

export const DemographicColorSchema = z.enum(["blue", "green", "red", "yellow", "purple", "orange", "pink", "brown"]);

export const CustomerSchema = z.object({
  name: z.string().optional(),
  phone: z.string().optional(),
});
