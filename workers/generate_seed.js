import fs from 'fs';

const DAYS = 25;
const CUPS_PER_DAY = 50;

const products = [
  { id: 'prod-americano', name: 'Americano (Davao Roast)', price: 12000 },
  { id: 'prod-latte', name: 'Mt. Apo Latte', price: 15000 },
  { id: 'prod-cappuccino', name: 'Mindanao Cappuccino', price: 14500 },
  { id: 'prod-mocha', name: 'Durian Mocha', price: 16500 },
];

const demographics = ["blue", "green", "red", "yellow", "purple", "orange", "pink", "brown"];
const ticketTypes = ["dine_in", "takeout"];

const rand = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
const randElem = (arr) => arr[rand(0, arr.length - 1)];

let sql = `
-- Create category and products
INSERT OR IGNORE INTO categories (id, org_id, name, sort_order, created_at)
SELECT 'cat-coffee-seed', id, 'Coffee', 1, '2026-04-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO tax_profiles (id, org_id, name, rate_bps, created_at)
SELECT 'tax-standard-seed', id, 'Standard 12%', 1200, '2026-04-01T00:00:00.000Z' FROM organizations LIMIT 1;
`;

for (const p of products) {
  sql += `
INSERT OR IGNORE INTO products (id, org_id, category_id, name, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, created_at, updated_at)
SELECT '${p.id}', id, 'cat-coffee-seed', '${p.name}', ${p.price}, 'tax-standard-seed', 1, 0, 0, '2026-04-01T00:00:00.000Z', '2026-04-01T00:00:00.000Z' FROM organizations LIMIT 1;
`;
}

let ticketCount = 1;
let paymentCount = 1;

for (let day = 1; day <= DAYS; day++) {
  let cupsSoFar = 0;
  
  while (cupsSoFar < CUPS_PER_DAY) {
    const isFeedback = Math.random() < 0.2; // 20% leave feedback
    const rating = rand(3, 5);
    const demo = randElem(demographics);
    const tType = randElem(ticketTypes);
    
    // Distribute time between 8am and 8pm (20:00)
    const hour = rand(8, 19).toString().padStart(2, '0');
    const minute = rand(0, 59).toString().padStart(2, '0');
    const second = rand(0, 59).toString().padStart(2, '0');
    const dateStr = "2026-04-" + day.toString().padStart(2, '0') + "T" + hour + ":" + minute + ":" + second + ".000Z";
    
    const cupsInTicket = rand(1, 4);
    cupsSoFar += cupsInTicket;
    
    const tid = "seed-ticket-" + ticketCount;
    
    let fbRatingSql = isFeedback ? rating : "NULL";
    let fbNotesSql = isFeedback ? (rating === 5 ? "'Excellent Mt Apo coffee!'" : "'Good.'") : "NULL";

    sql += "INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)\n";
    sql += "SELECT '" + tid + "', o.id, r.id, 'paid', '" + tType + "', '" + demo + "', " + fbRatingSql + ", " + fbNotesSql + ", u.id, '" + dateStr + "', '" + dateStr + "'\n";
    sql += "FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;\n\n";

    let totalCentavos = 0;
    let lineIdCounter = 1;
    
    for (let i = 0; i < cupsInTicket; i++) {
      const p = randElem(products);
      totalCentavos += p.price;
      const lid = "seed-line-" + ticketCount + "-" + (lineIdCounter++);
      
      sql += "INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)\n";
      sql += "VALUES ('" + lid + "', '" + tid + "', '" + p.id + "', 1, " + p.price + ", 0, '" + dateStr + "');\n\n";
    }

    const pid = "seed-payment-" + paymentCount;
    sql += "INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)\n";
    sql += "VALUES ('" + pid + "', '" + tid + "', 'cash', " + totalCentavos + ", 'completed', '" + dateStr + "');\n\n";

    const aid = "seed-audit-" + paymentCount;
    sql += "INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)\n";
    sql += "SELECT '" + aid + "', o.id, u.id, r.id, 'ticket.create', 'ticket', '" + tid + "', '" + dateStr + "'\n";
    sql += "FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;\n\n";

    ticketCount++;
    paymentCount++;
  }
}

fs.writeFileSync('seed.sql', sql);
console.log('seed.sql generated');
