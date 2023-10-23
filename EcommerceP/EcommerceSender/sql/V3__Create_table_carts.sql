CREATE TABLE IF NOT EXISTS db_schema.carts (
   cart_id SERIAL PRIMARY KEY,
   user_id INTEGER NOT NULL REFERENCES users(user_id),
    product_id INTEGER NOT NULL REFERENCES products(id),
    quantity INTEGER NOT NULL DEFAULT 1,
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);