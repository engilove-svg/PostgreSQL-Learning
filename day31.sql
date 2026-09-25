SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

SELECT name
FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
    WHERE department_name IN ('IT', 'HR')
);

SELECT c.name
FROM customers AS c
WHERE EXISTS (
    SELECT 1
    FROM orders AS o
    WHERE o.customer_id = c.id
);