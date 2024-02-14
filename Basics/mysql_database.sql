/*

🔶 What is Data?

Data is a collection of a distinct small unit of information. Raw facts and figure

🔶 What is Database?

A database (Software Application) is an organized collection of data, so that it can be 
easily accessed and managed.

🔶 MySQL (Relational Database Management - System stored data in forms of table)

- Free & Open source RDBMS software by Oracle.
- SQL
- User Management
- Transaction Management
- Speed, Scalability, Performance


command to run a new mysql client in terminal
> mysql -u root --port 3307 -p

(help command)
> \h 
 
*/

SHOW DATABASES;

-- create a new database
CREATE DATABASE [dbname];

-- drop a database
DROP DATABASE [dbname];

USE [dbname];


-- create table
CREATE TABLE [tablename](col1 colType(size) extra...);

-- show tables
SHOW TABLES;

-- describe the tables
DESC [tablename];


-- alter table
ALTER TABLE [tablename] ADD [column_name] datatype;

-- modify column
ALTER TABLE [tablename] MODIFY [column_name] [newDataType];


-- rename column -- this clause is available from mysql v8
ALTER TABLE [tablename] RENAME COLUMN [oldcolname] TO [newcolname];

-- drop column
ALTER TABLE [tablename] DROP COLUMN [colname];

-- insert data to table
INSERT INTO [tablename] (cols) VALUES (actual_values);

-- update
UPDATE [tablename] SET col1=value, col2=value, col3=value WHERE id = 12;

-- delete
DELETE FROM [tablename] WHERE [colname]=?;


------------------------


-- aliases
SELECT [colname] AS [tempname], [colname ] [tempname] from [tablename];

-- AND operator
SELECT * FROM [tablename] WHERE [colname]=<somevalue> AND name=<somevalue>;


-- OR operator
SELECT * FROM [tablename] WHERE [colname]=<somevalue> OR name=<somevalue>;

-- NOT operator
SELECT * FROM [tablename] WHERE [colname] <> <somevalue>;
SELECT * FROM [tablename] WHERE [colname] != <somevalue>;
SELECT * FROM [tablename] WHERE NOT [colname] = <somevalue>;


-- order by 
select * from [tablename] order by [colname] asc/desc;


-- aggregate functions
AVG()
SUM()
COUNT()
