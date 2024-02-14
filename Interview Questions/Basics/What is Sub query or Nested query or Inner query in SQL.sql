/*

❖ A Subquery/ Inner query/ Nested query is a query within another SQL outer query and 
embedded within the WHERE clause.

*/

-- Outer Query
SELECT
    LastName, FirstName
FROM
    Employees
WHERE
    OfficeCode IN (
        SELECT  
            OfficeCode 
        FROM 
            Offices
        WHERE
            Country = 'USA'
    ); -- Inner Query
