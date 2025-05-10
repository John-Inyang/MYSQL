-- Create Employees table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);
USE employee_details;

-- Insert sample data into Employees table
INSERT INTO Employees_US (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');


SELECT * FROM Employees_US;

-- Find Employees whose Last Name starts with 'S'  
SELECT * FROM Employees_US
WHERE  lastname LIKE "s%";
-- Find Employees whose First Name ends with 'a'  
SELECT * FROM Employees_US
WHERE firstname LIKE "%a";
-- Find Employees whose Department contains 'Eng'  
SELECT * FROM Employees_US
WHERE department LIKE "%eng%";
-- Find Employees whose Last Name is exactly 5 characters long  
SELECT * FROM Employees_US
WHERE lastname LIKE "_____";
-- Find Employees whose First Name starts with 'C' or 'D'  
SELECT * FROM Employees_US
WHERE firstname LIKE "c%" OR firstname LIKE "d%";
-- Find Employees whose Last Name contains 'son'  
SELECT * FROM Employees_US
WHERE lastname LIKE "%son";
-- Find Employees whose First Name contains the letter 'i' as the second character  
SELECT * FROM Employees_US
WHERE firstname LIKE "_i%";
-- Find Employees whose Last Name starts with any letter between 'A' and 'L'  
SELECT * FROM Employees_US
WHERE lastname LIKE "a%" AND lastname LIKE "l%";
-- Find Employees whose First Name does not contain 'o'  
SELECT * FROM Employees_US
WHERE firstname NOT LIKE "%o%";
-- Find Employees whose Last Name ends with 'a' and is exactly 5 characters long  
SELECT * FROM Employees_US
WHERE lastname LIKE "_____a";
-- Find Employees whose Department starts with 'Mar' and ends with 'ing'  
SELECT * FROM Employees_US
WHERE department LIKE "mar%ing";
-- Find Employees whose First Name has an 'a' in the third position  
SELECT * FROM Employees_US
WHERE firstname LIKE "__a%";
-- Find Employees whose Last Name starts with 'Br' or 'Bl'  
SELECT * FROM Employees_US
WHERE lastname LIKE "br%" OR lastname LIKE "bl%";
-- Find Employees whose First Name starts with vowel
SELECT *
FROM employees_US
WHERE firstname LIKE "A%"
   OR firstname LIKE "E%"
   OR firstname LIKE "I%"
   OR firstname LIKE "O%"
   OR firstname LIKE "U%";
   -- Find Employees whose First Name starts with vowel
   SELECT * FROM Employees_US
   WHERE lastname LIKE "a%"
   OR lastname LIKE "e%"
   OR lastname LIKE "i%"
   OR lastname LIKE "o%"
   OR lastname LIKE "u%";
     -- Find Employees whose First Name does not starts with consonant
	 -- Find Employees whose First Name starts with consonant (BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz)
     SELECT * FROM Employees_US
   WHERE firstname LIKE "b%"
   OR lastname LIKE "c%"
   OR lastname LIKE "d%"
   OR lastname LIKE "f%"
   OR lastname LIKE "g%"
   OR lastname LIKE "h%"
   OR lastname LIKE "j%"
   OR lastname LIKE "k%"
   OR lastname LIKE "l%"
   OR lastname LIKE "m%"
   OR lastname LIKE "n%"
   OR lastname LIKE "p%"
   OR lastname LIKE "q%"
   OR lastname LIKE "r%"
   OR lastname LIKE "s%";
		--	OR
SELECT * FROM Employees_US
WHERE lastname REGEXP "[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]";