CREATE DATABASE class_3;
USE class_3;
CREATE TABLE product(
product_ID INT,
product_name VARCHAR(20),
product_date DATE,
product_time TIME,
product_datetime DATETIME
);
SELECT * FROM product;
INSERT INTO product
VALUE (100, "Fanta", current_date(), current_time(), now());