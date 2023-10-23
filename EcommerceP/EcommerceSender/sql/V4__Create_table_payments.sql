CREATE TABLE IF NOT EXISTS db_schema.payments (
    payment_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    cart_id INTEGER NOT NULL REFERENCES carts(cart_id),
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(255),
    payment_status VARCHAR(255) NOT NULL
);