-- nth element first and then remaining table
SELECT
    [employee_id],
    [first_name],
    [last_name],
    [salary]
FROM hcm.employees
WHERE employee_id = 103
UNION ALL
SELECT TOP 9
    [employee_id],
    [first_name],
    [last_name],
    [salary]
FROM hcm.employees
WHERE employee_id <> 103;
