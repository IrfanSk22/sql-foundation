/*

❖ A view is a VIRTUAL table which consists of a subset of data contained in 
single table or more than one table.

❖ Remember, in case of view, only query is stored but the actual data is never stored like a table.

*/

CREATE VIEW [India-Customers]
AS 
    SELECT 
        CustomerName, ContactName 
    FROM Customers
    WHERE Country = 'India';

/*

❖ Advantages of Views
1. Indexed Views to  the performance.
2. Extra security – DBA can hide the actual table names and expose views for Read operations only.

*/
