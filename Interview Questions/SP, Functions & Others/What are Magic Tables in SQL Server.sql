/*

❖ Magic tables are the temporary logical tables that are 
created by the SQL server, whenever there are insertion or 
deletion or update( D.M.L) operations.

❖ Types of magic tables
1. INSERTED – When any insert query executed, then the recently 
inserted row gets added to the INSERTED magic table.

2. DELETED – When any delete query executed, then the recently 
deleted row gets added to the DELETED magic table.
In update case, the updated row gets stored in INSERTED magic 
table and the old row or previous row gets stored in the DELETED 
magic table.

❖ The use of magic tables are TRIGGERS.

*/
