/*

A self-join in SQL occurs when a table is joined with itself. This can be useful when 
you have a table with a hierarchical structure or when you want to compare rows within 
the same table. In a self-join, you typically use aliases to differentiate between the 
two instances of the same table.

*/

-- Here's a simple example to illustrate a self-join. Consider a table named Employees with columns
-- EmployeeID and ManagerID. The ManagerID column contains the EmployeeID of the manager for each employee:


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employees VALUES (1, 'John', NULL);
INSERT INTO Employees VALUES (2, 'Jane', 1);
INSERT INTO Employees VALUES (3, 'Bob', 2);
INSERT INTO Employees VALUES (4, 'Alice', 2);

--
SELECT e1.EmployeeName AS Employee, e2.EmployeeName AS Manager
FROM Employees e1
LEFT JOIN Employees e2 
ON e1.ManagerID = e2.EmployeeID;

-- This query returns a result set showing each employee along with their respective manager. 
-- The LEFT JOIN is used to include employees who don't have managers (e.g., John, who has a NULL 
-- in the ManagerID column).
