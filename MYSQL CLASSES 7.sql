-- UNIQUE (allow your data to not have duplicate values)
-- NOT NULL (allow no column to have null values)

CREATE DATABASE shoprite;
USE shoprite;
CREATE TABLE products(
product_id INT,
product_name VARCHAR(100) UNIQUE,
product_price DECIMAL (10,2) NOT NULL
);
SELECT * FROM products;