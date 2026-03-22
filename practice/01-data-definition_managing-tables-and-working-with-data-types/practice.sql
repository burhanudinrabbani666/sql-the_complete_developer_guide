-- #postgresql
-- Create database

-- CREATE DATABASE online_shop;

-- Add table
-- CREATE TABLE products( product_name VARCHAR(200) NOT NULL, price FLOAT NOT NULL, description TEXT, amount_in_stock INT CHECK(amount_in_stock > 0) , image VARCHAR(200));

-- Choose appropriate column name and data type

-- Insert dummy
-- INSERT INTO products VALUES('Coffe', 2500, 'Coffe from indonesia', 5000, 'xxxxx');
-- INSERT INTO products(product_name, description, amount_in_stock, price) VALUES('Tea', 'Tea from indonesia',5, 5000 );

-- update table and add sesiable constaints

-- ALTER TABLE products
-- ALTER COLUMN  image SET DATA TYPE TEXT;

-- Update table and add a primary key 

ALTER TABLE products
ADD COLUMN product_id SERIAL PRIMARY KEY;