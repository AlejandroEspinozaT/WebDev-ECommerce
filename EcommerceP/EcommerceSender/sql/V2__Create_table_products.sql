CREATE TABLE IF NOT EXISTS db_schema.products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    image_url VARCHAR(512),
    stock INTEGER NOT NULL DEFAULT 0,
    category VARCHAR(255),
    rating FLOAT DEFAULT 0
);