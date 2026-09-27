SELECT
    name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary ASC) AS row_num
FROM employees;

SELECT
    name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_num
FROM employees;