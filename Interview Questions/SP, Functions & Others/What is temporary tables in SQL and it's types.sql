/*

Temporary tables in SQL are tables that are created and used for a short duration within a session or a 
transaction. They are particularly useful for storing intermediate results during complex queries or for 
breaking down a large query into smaller, more manageable parts.

There are generally two types of temporary tables:

1. **Local Temporary Tables:**
   - Created using the `CREATE TABLE` statement with the `#` symbol as a prefix to the table name.
   - Exist only for the duration of the session in which they were created.
   - Automatically dropped when the session ends or when the connection is closed.

   Example:
   ```sql
   CREATE TABLE #TempTable (
       ID INT,
       Name VARCHAR(50)
   );
   ```

2. **Global Temporary Tables:**
   - Created using the `CREATE TABLE` statement with a double `##` prefix to the table name.
   - Exist for the duration of the session or until all sessions referencing the table disconnect.
   - Must be explicitly dropped using the `DROP TABLE` statement.

   Example:
   ```sql
   CREATE TABLE ##GlobalTempTable (
       ID INT,
       Name VARCHAR(50)
   );
   ```

Temporary tables are often used when you need to store and manipulate intermediate results in a complex query, 
or when you want to share data between different parts of a stored procedure. Keep in mind that excessive use
of temporary tables can impact performance, so they should be used judiciously.

*/
