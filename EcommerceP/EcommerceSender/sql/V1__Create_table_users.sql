CREATE SCHEMA db_schema;

CREATE TABLE IF NOT EXISTS db_schema.users (
   user_id SERIAL PRIMARY KEY,
   username VARCHAR(255) NOT NULL UNIQUE,
   password_hash VARCHAR(512) NOT NULL,
   first_name VARCHAR(255),
   last_name VARCHAR(255),
   email VARCHAR(255) NOT NULL UNIQUE,
);
