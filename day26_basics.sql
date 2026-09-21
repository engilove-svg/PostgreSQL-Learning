-- CareerLaunch SQL Practice
-- Day 26: PostgreSQL Basics

-- 1. Display all employees
SELECT *
FROM employees;

-- 2. Display first names
SELECT first_name
FROM employees;

-- 3. Display names and salaries
SELECT first_name, salary
FROM employees;

-- 4. Find IT employees
SELECT *
FROM employees
WHERE department = 'IT';

-- 5. Salary greater than 60000
SELECT *
FROM employees
WHERE salary > 60000;

-- 6. Sort by salary
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;

-- 7. Show top 2 salaries
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 2;

-- 8. IT employees earning more than 60000
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 60000;

-- 9. IT or HR employees
SELECT first_name, department
FROM employees
WHERE department = 'IT'
   OR department = 'HR';