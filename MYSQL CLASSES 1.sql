CREATE DATABASE class_1;
USE class_1;
CREATE TABLE employees(
	employees_id INT,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    hire_date DATE,
    monthly_pay DECIMAL(8,2),
    syntex_number INT,
    company_name VARCHAR (100),
    work_hours INT,
    overtime_pay DECIMAL (8,2)
        );
    SELECT * FROM employees;
    INSERT INTO employees 
    VALUE (15, "Okon", "Akpan", "2023-03-19", 9000.00, 1065, "All Tarlenz", 3, 30000.00);   
    
    INSERT INTO employees (employees_id, first_name, last_name, company_name)
    VALUE(16, "Mike", "David", "Älend");