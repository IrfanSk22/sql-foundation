/*

❖ A Common Table Expression, is a TEMPORARY 
named result set, that you can reference 
within a SELECT, INSERT, UPDATE, or DELETE 
statement.

*/

WITH Engineers AS
(
    SELECT *
    FROM Employees
    WHERE dept = 'Engineering'
)

SELECT * 
FROM Engineers
WHERE ...;
