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

SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;

SELECT
    name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;

SELECT
    name,
    department,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

WITH ranked_employees AS (
    SELECT
         name,
         department,
         salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees
)
SELECT  name,
        department,
        salary,
        salary_rank
FROM ranked_employees
WHERE salary_rank <=2