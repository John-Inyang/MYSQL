CREATE DATABASE employee_details;
DROP DATABASE enployee_details;
USE employee_details;
SELECT * FROM employees;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);
SELECT * FROM employees;

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 'HR', 50000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finance', 60000.00, '2019-03-23'),
(3, 'Alice', 'Johnson', 'IT', 75000.00, '2021-07-10'),
(4, 'Bob', 'Brown', 'Marketing', 55000.00, '2018-09-30'),
(5, 'Charlie', 'Davis', 'IT', 70000.00, '2022-02-20');

INSERT INTO employees
VALUE (8, "Kings", NULL, "Marketing", NULL, NULL);

SELECT firstname, lastname, department
FROM employees;    
-- (Select certain colum)



-- select where
SELECT * FROM employees
WHERE salary >=70000;

-- Select Distinct
SELECT distinct firstname
FROM employees;

SELECT * FROM employees
ORDER BY firstname DESC;

-- AND & OR (IT IS USE TO SELECT CONDICTION)
SELECT * FROM employees
WHERE department = "HR";

SELECT * FROM employees
WHERE department = "HR" AND firstname = "John";

SELECT * FROM employees
WHERE department = "HR" OR firstname = "John";

SELECT * FROM employees
WHERE HireDate > "2020-01-01";

-- NOT, BEWEENT AND IN OPERATOR
SELECT * FROM employees
WHERE NOT department = "HR";

SELECT * FROM employees
WHERE NOT department = "HR" AND NOT department = "IT";

SELECT * FROM employees
WHERE NOT department = "HR" AND NOT firstname = "John";

SELECT * FROM employees
WHERE NOT salary >= 60000;

-- BETWEEN 
SELECT * FROM employees
WHERE salary BETWEEN 20000 AND 60000;

SELECT * FROM employees
WHERE salary BETWEEN 60000 AND 150000;

-- IN OPERATOR
SELECT * FROM employees
WHERE department IN ("HR", "IT");

SELECT * FROM employees
WHERE department NOT IN ("HR", "IT");

-- TOP N(LIMIT)
SELECT * FROM employees
LIMIT 2;

SELECT * FROM employees
LIMIT 4;






