/*

❖ Auto-increment allows a unique number to be generated automatically when 
a new record is inserted into a table.

❖ Mostly auto increment is set on the primary key only.

*/

CREATE TABLE Employee (
    ID int IDENTITY(1,1) PRIMARY KEY,
    EmpName VARCHAR(255) NOT NULL
);
