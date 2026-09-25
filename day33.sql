WITH high_earners AS (
    SELECT name, salary
    FROM employees
    WHERE salary > 60000
)
SELECT name, salary
FROM high_earners;

