import fs from 'fs';

const DAYS = 25;
const CUPS_PER_DAY = 50;

const products = [
  { id: 'prod-iced-spanish-latte', name: 'Iced Spanish Latte', price: 18500 },
  { id: 'prod-iced-mocha', name: 'Iced Mocha', price: 17000 },
  { id: 'prod-cold-brew', name: 'Cold Brew', price: 15500 },
  { id: 'prod-espresso', name: 'Espresso', price: 11000 },
  { id: 'prod-americano', name: 'Americano', price: 12500 },
  { id: 'prod-spanish-latte', name: 'Spanish Latte', price: 16500 },
  { id: 'prod-caramel-macchiato', name: 'Caramel Macchiato', price: 18000 },
];

const demographics = ["blue", "green", "red", "yellow", "purple", "orange", "pink", "brown"];
const ticketTypes = ["dine_in", "takeout"];

const feedbackByProduct = {
  'prod-iced-spanish-latte': [
    { rating: 5, note: 'Best Iced Spanish Latte in Davao — refreshing and creamy after a hot day at Abreeza.' },
    { rating: 4, note: 'Loved the cold brew style and sweetness, perfect for Davao weather.' },
    { rating: 3, note: 'Nice chill drink, but I wished the caramel was a little stronger.' },
    { rating: 2, note: 'Too sweet for my taste, the iced Spanish latte felt syrupy.' },
  ],
  'prod-iced-mocha': [
    { rating: 5, note: 'Iced Mocha was excellent — chocolatey and smooth after mall hopping in Davao.' },
    { rating: 4, note: 'Great coffee-choco balance, just what I needed this afternoon.' },
    { rating: 3, note: 'Good flavor but a little too weak for a mocha.' },
    { rating: 2, note: 'Too sweet and the mocha taste was muddled by ice.' },
  ],
  'prod-cold-brew': [
    { rating: 5, note: 'Cold Brew is very smooth and strong, ideal for a morning walk at Eden Nature Park.' },
    { rating: 4, note: 'Refreshing and not bitter, a good pick-me-up for the day.' },
    { rating: 3, note: 'Decent cold brew, but I expected more depth.' },
    { rating: 2, note: 'Felt flat and too diluted compared to a good Davao coffee shop brew.' },
  ],
  'prod-espresso': [
    { rating: 5, note: 'Espresso shot was sharp and clean — a proper caffeine hit.' },
    { rating: 4, note: 'Strong and bold, just what I wanted with the pastries.' },
    { rating: 3, note: 'Good espresso, but slightly too acidic for my liking.' },
    { rating: 2, note: 'Too bitter and intense; needs a better pull.' },
  ],
  'prod-americano': [
    { rating: 5, note: 'Americano tasted rich and smooth, the best one I have found in Davao.' },
    { rating: 4, note: 'Well brewed americano, just the right strength.' },
    { rating: 3, note: 'Nice coffee, though it could use a bit more body.' },
    { rating: 2, note: 'Too watery and lacking the bold flavor I expected.' },
  ],
  'prod-spanish-latte': [
    { rating: 5, note: 'Spanish Latte was creamy and perfect — excellent for a relaxed afternoon in Davao.' },
    { rating: 4, note: 'Smooth and sweet enough without being cloying.' },
    { rating: 3, note: 'Good latte, but the sweetness was a bit inconsistent.' },
    { rating: 2, note: 'Too sugary and the milk overpowered the coffee.' },
  ],
  'prod-caramel-macchiato': [
    { rating: 5, note: 'Caramel Macchiato was delicious, with great caramel notes and balanced espresso.' },
    { rating: 4, note: 'Nice sweet finish, exactly what I wanted after lunch.' },
    { rating: 3, note: 'Tasty but a bit too sweet if you like your coffee drier.' },
    { rating: 2, note: 'Caramel overpowered the espresso, tasted more like dessert than coffee.' },
  ],
};

const rand = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
const randElem = (arr) => arr[rand(0, arr.length - 1)];

let sql = `
-- Remove existing sample seed data so the new product set is clean
DELETE FROM line_items WHERE ticket_id LIKE 'seed-ticket-%';
DELETE FROM payments WHERE ticket_id LIKE 'seed-ticket-%';
DELETE FROM audit_events WHERE entity_id LIKE 'seed-ticket-%';
DELETE FROM tickets WHERE id LIKE 'seed-ticket-%';
DELETE FROM product_modifier_groups WHERE product_id LIKE 'prod-%';
DELETE FROM menu_products WHERE product_id LIKE 'prod-%';
DELETE FROM products WHERE id LIKE 'prod-%';
DELETE FROM categories WHERE id = 'cat-coffee-seed';
DELETE FROM tax_profiles WHERE id = 'tax-standard-seed';

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

function getFeedbackComment(productId, rating) {
  const options = feedbackByProduct[productId] || [];
  const filtered = options.filter((item) => {
    if (rating >= 4) return item.rating >= 4;
    if (rating === 3) return item.rating === 3;
    return item.rating <= 3;
  });
  if (filtered.length === 0) {
    return options.length ? options[Math.floor(Math.random() * options.length)].note : 'Nice coffee.';
  }
  return filtered[Math.floor(Math.random() * filtered.length)].note;
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
    
    const selectedProduct = products[rand(0, products.length - 1)];
    const fbRatingSql = isFeedback ? rating : "NULL";
    const fbNotesSql = isFeedback ? "'" + getFeedbackComment(selectedProduct.id, rating).replace(/'/g, "''") + "'" : "NULL";

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
