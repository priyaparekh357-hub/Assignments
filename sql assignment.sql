USE MarketCo;

#1)

CREATE TABLE Contact (
    ContactID INT PRIMARY KEY,
    CompanyID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(2),
    Zip VARCHAR(10),
    IsMain BOOLEAN,
    Email VARCHAR(45),
    Phone VARCHAR(12),
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

#2)

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Salary DECIMAL(10,2),
    HireDate DATE,
    JobTitle VARCHAR(25),
    Email VARCHAR(45),
    Phone VARCHAR(12)
);

3)

CREATE TABLE ContactEmployee (
    ContactEmployeeID INT PRIMARY KEY,
    ContactID INT,
    EmployeeID INT,
    ContactDate DATE,
    Description VARCHAR(100),
    
    FOREIGN KEY (ContactID) REFERENCES Contact(ContactID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

UPDATE Employee
SET Phone = '215-555-8800'
WHERE EmployeeID = 101;

UPDATE Company
SET CompanyName = 'Urban Outfitters'
WHERE CompanyID = 1;

DELETE FROM ContactEmployee
WHERE ContactEmployeeID = 1;

SELECT e.FirstName, e.LastName
FROM Employee e
JOIN ContactEmployee ce ON e.EmployeeID = ce.EmployeeID
JOIN Contact c ON ce.ContactID = c.ContactID
JOIN Company co ON c.CompanyID = co.CompanyID
WHERE co.CompanyName = 'Toll Brothers';

SELECT * FROM Employee
WHERE FirstName LIKE 'J%';

SELECT * FROM Employee
WHERE FirstName LIKE 'J_n';

#9) Explain normalization in the context of databases.
1. First Normal Form (1NF)
Removes repeating groups or multiple values in a column
Each field contains atomic (single) values
2. Second Normal Form (2NF)
Must be in 1NF
Removes partial dependency
3. Third Normal Form (3NF)
Must be in 2NF
Removes transitive dependency

#10)What does a join in MySQL mean?  
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL JOIN

#11) What do you understand about DDL, DCL, and DML in MySQL? 
DDL is used to define and manage the structure of the database (schema).
Key functions:
Create database objects
Modify structure
Delete objects
DCL is used to control access and permissions in the database.
Key functions:
Grant or revoke user permissions
Common commands:
GRANT → gives privileges
REVOKE → removes privileges
DML is used to manage and manipulate data inside tables.
Key functions:
Insert, update, delete, and retrieve data

#12) 12) What is the role of the MySQL JOIN clause in a query, and what are some 
common types of joins? 
🔹 Why JOIN is Important
Avoids data duplication (normalization)
Connects related tables (like Customers ↔ Orders)
Makes queries more powerful and meaningful
🔹 Common Types of JOINs in MySQL
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL JOIN
5. CROSS JOIN




