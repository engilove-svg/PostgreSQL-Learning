SELECT first_name, salary
FROM employees
WHERE salary BETWEEN 50000 AND 65000;

SELECT first_name, department
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');

SELECT first_name, department
FROM employees
WHERE department NOT IN ('IT', 'HR');

SELECT COUNT(*)
FROM employees;

SELECT COUNT(*)
FROM employees
WHERE department = 'IT';

SELECT AVG(salary)
FROM employees;

SELECT SUM(salary)
FROM employees;

SELECT MIN(salary)
FROM employees;

SELECT MAX(salary)
FROM employees;

SELECT
    COUNT(*) AS total_employees,
    AVG(salary) AS average_salary,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary
FROM employees;

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;

SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

SELECT
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;
