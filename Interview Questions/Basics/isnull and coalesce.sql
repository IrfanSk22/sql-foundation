/*

ISNULL():

Specific to Microsoft SQL Server.
Takes two arguments: expression and replacement value.
Example:

*/

SELECT 
    ISNULL(ColumnName, 'DefaultValue') AS Result
FROM TableName;

/*
COALESCE():
More widely supported across database systems.
Takes multiple arguments and returns the first non-NULL value.
Example:

*/

SELECT
    COALESCE(ColumnName1, ColumnName2, 'DefaultValue') AS Result
FROM TableName;


-- Choose ISNULL() if you're working exclusively with SQL Server and have only two arguments. 
-- Choose COALESCE() for a more portable solution or when handling multiple arguments.
