CREATE TABLE Sales (
    ProductID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    CustomerID INT,
    StoreID INT,
    SalespersonID INT,
    PaymentMethod VARCHAR(50)  -- New varchar column for payment method
);
SELECT * FROM sales;

-- Inserting more sample data (10 records), including NULL values
INSERT INTO
Sales (ProductID, SaleDate, Quantity, TotalAmount, CustomerID, StoreID, SalespersonID, PaymentMethod)
VALUES
(1, '2023-08-01', 10, 200.00, 101, 1, 201, 'Credit Card'),
(2, '2023-08-01', 5, 150.00, 102, 1, 202, 'Cash'),
(1, '2023-08-02', 8, 160.00, 103, 2, 203, 'Credit Card'),
(2, '2023-08-02', 7, 210.00, 104, 2, 204, 'Cash'),
(1, '2023-08-03', 6, 120.00, 105, 1, 201, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-04', 12, 300.00, 106, 3, 205, 'Credit Card'),
(1, '2023-08-04', 5, 100.00, 107, 3, 206, 'Debit Card'),
(2, '2023-08-05', 9, 270.00, 108, 1, 202, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-05', 15, 375.00, 109, 3, 207, 'Cash'),
(1, '2023-08-06', 7, 140.00, 110, 2, 203, 'Credit Card');

-- SQL NULL OPERATORS
SELECT * FROM sales;
SELECT paymentmethod FROM sales;
SELECT DISTINCT paymentmethod
FROM sales;

SELECT * FROM sales
WHERE PaymentMethod is NULL;


-- SQL MAX & GROUP BY | alias "AS"
SELECT totalamount FROM sales;

SELECT MAX(totalamount) FROM sales;

-- alias AS
SELECT MAX(totalamount) AS "Highest product price" FROM sales;

-- GROUP BY
SELECT productid, MAX(totalamount) AS "Higest Price" FROM sales
GROUP BY productid;

SELECT productid, MIN(totalamount) AS "Mininum Price" FROM sales
GROUP BY productid;

SELECT productid, SUM(totalamount) AS "Total Price" FROM sales
GROUP BY productid;

SELECT productid, AVG(totalamount) AS "Average Price" FROM sales
GROUP BY productid;

SELECT productid, SUM(Quantity) AS "Total Quantity for each product" FROM sales
GROUP BY productid;

-- FIND THE SUM, MIN, MAX, AVERAGE of totalamount for each product.
SELECT productid,
SUM(totalamount) AS "Total Amount",
MIN(totalamount) AS "Minimun Amount",
MAX(totalamount) AS "Maximum Amount",
AVG(totalamount) AS "Average Amount"
FROM sales
GROUP BY productid;

-- SQL HAVING CLAUSE
SELECT productid,
SUM(totalamount) AS "Total Amount",
MIN(totalamount) AS "Minimun Amount",
MAX(totalamount) AS "Maximum Amount",
AVG(totalamount) AS "Average Amount",
SUM(Quantity) AS "Total Quantity"
FROM sales
GROUP BY productid
HAVING SUM(totalamount) > 650 AND SUM(Quantity) = 36;

SELECT productid,
SUM(totalamount) AS "Total Amount",
MIN(totalamount) AS "Minimun Amount",
MAX(totalamount) AS "Maximum Amount",
AVG(totalamount) AS "Average Amount",
SUM(Quantity) AS "Total Quantity"
FROM sales
GROUP BY productid
HAVING SUM(totalamount) > 700 AND AVG("Average Amount") <= 200;


-- NEXT CLASS--

-- SQL WILDCARD - LIKE OPERATOR
-- SQL DATATYPES
-- SQL NOT NULL CONSTAINT
-- SQL UNIQUE CONSTRAINT
-- SQL CHECK CONSTAINT
-- SQL DEFAULT CONSTRAINT
-- SQL PRIMARY & FOREIGN KEY CONSTRAINT
-- SQL JOIN- INNER JOIN
-- SQL JOIN- LEFT JOIN
-- SQL JOIN - RIGHT JOIN
-- SQL JOIN - LEFT AND RIGHT ANTI-JOINT
-- SQL JOIN- FULL OUTER JOIN
-- SQL JOIN - SELF JOIN
-- SQL UNION - UNION ALL


