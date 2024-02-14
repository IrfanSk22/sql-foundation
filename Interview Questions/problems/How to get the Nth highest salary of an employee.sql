-- nth highest salary 3rd in this case
SELECT TOP 1
    salary
FROM (
        SELECT DISTINCT TOP 3
            salary
        FROM hcm.employees
        ORDER BY salary DESC) AS RESULT
ORDER BY salary ASC;
