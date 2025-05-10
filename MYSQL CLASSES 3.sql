CREATE DATABASE class_2;
USE class_2;
CREATE TABLE phones(
phones_ID INT,
phones_name VARCHAR(20),
phone_mode VARCHAR(30),
phones_price DECIMAL(15,2),
phones_date DATE
);
SELECT * FROM phones;
INSERT INTO product_2
VALUE(1, "Samsung", "Galaxy A1", 1800000.00, "2025-01-25");
DROP TABLE product_2;
CREATE TABLE phones(
phones_ID INT,
phones_name VARCHAR(15),
phones_mode VARCHAR(15),
phones_price DECIMAL(15,2),
phones_date DATE
);
INSERT INTO phones
VALUE(1, "Samsung", "Galaxy A1", 1800000.00, "2025-01-20"),
	 (2, "Iphone", "18 Pro Max", 1600000.00, "2025-01-25"),
     (3, "Nokia", "SO5", 1200000.00, "2025-01-17"),
     (4, "Motorola", "ÄO5 Pro", 950000.00, "2024-07-12"),
     (5, "Vivo", "Smart 12 pro", 900000.00, "2024-06-23"),
     (6, "Oppo", "A15", 800000.00, "2023-10-18"),
     (7, "Redmi", "S50", 750000.00, "2023-08-26"),
     (8, "Tekno", "Ai50", 700000.00, "2023-09-15"),
     (9, "Infinix", "Hot 10 Plus Pro", 600000.00, "2022-11-28"),
     (10, "Itel", "P50", 450000.00, "2022-05-16");
     SELECT * FROM phones;
     INSERT INTO phones(phones_name, phones_date)
     VALUE("Nokia Touch", "2021-03-12");
     SELECT * FROM phones
     WHERE phones_name = "Iphone" and phones_price = 1600000.00;
      SELECT * FROM phones
     WHERE phones_name = "Iphone" or phones_price = 1800000.00;
     SELECT * FROM phones
     WHERE phones_price >= 700000.00;
     SELECT * FROM phones
     WHERE phones_price <= 700000.00;
     SELECT * FROM phones
     WHERE phones_price != 1000000.00;
     SELECT * FROM phones
     order by phones_name;
     SELECT * FROM phones
     order by phones_price desc;
SELECT * FROM phones
	limit 4, 2;
    SELECT * FROM phones
     WHERE phones_mode LIKE "A%";
     SELECT * FROM phones
     WHERE phones_mode LIKE "A__";