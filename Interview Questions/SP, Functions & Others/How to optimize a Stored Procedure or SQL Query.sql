/*

1.  Use SET NOCOUNT ON

2.  Specify column names instead of using * .

SELECT * FROM table1 ❌
SELECT col1, col2 FROM table1 ✅

3. Use schema name before objects or table names.

SELECT EmpID, Name FROM Employee ❌
SELECT EmpID, Name FROM dbo.Employee ✅

4. Use EXISTS () instead of COUNT ().

SELECT Count(1) FROM dbo.Employee ❌
IF( EXISTS (SELECT 1 FROM db.Employees)) ✅

5.  Use TRANSACTION when required only.

6.  Do not use DYNAMIC QUERIES. They are vulnerable to 
SQL Injections.

*/
