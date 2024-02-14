-- CLUSTERED INDEX

CREATE CLUSTERED INDEX index_name
ON table_name (columm_name ASC/DESC)


-- NON CLUSTERED INDEX
CREATE NONCLUSTERED INDEX index_name
ON table_name (column_name ASC/DESC)

-- ❖ When you create a PRIMARY KEY constraint, a clustered index on the column is 
-- automatically created.
