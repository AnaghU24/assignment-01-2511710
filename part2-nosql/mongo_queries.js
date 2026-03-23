// OP1: insertMany()
db.products.insertMany([
  { product_id: "E1", name: "iPhone 14", category: "Electronics", price: 80000 },
  { product_id: "C1", name: "T-Shirt", category: "Clothing", price: 1200 },
  { product_id: "G1", name: "Milk", category: "Groceries", price: 60, expiry_date: new Date("2025-06-30") }
]);

// OP2: find Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find groceries expiring before 2025
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne
db.products.updateOne(
  { product_id: "E1" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex
db.products.createIndex({ category: 1 });