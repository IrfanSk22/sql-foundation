SELECT COUNT(CustomerId), Country
FROM Customers
WHERE country = 'India'
GROUP BY Country
HAVING COUNT (CustomerId) > 5;

/*

1. WHERE Clause is used before GROUP BY Clause.
1) HAVING Clause is used after GROUP BY Clause.

*/

SELECT EmpName 
FROM Employee 
GROUP BY EmpName
HAVING SUM(EmpSalary) < 30000

/*

2. WHERE Clause cannot contain AGGREGATE function.
2) HAVING Clause can contain aggregate function.

*/



-- The GROUP BY clause in SQL is used to group rows that have the same values in specified columns 
-- into summary rows
-- We use GROUP BY CLAUSE WHEREVER WE USE AGGREGATE FUNCTIONS SUCH AS COUNT(), MIN(), MAX() OR SUM().
