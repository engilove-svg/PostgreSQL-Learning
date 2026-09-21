-- 1. Create employees table
CREATE TABLE IF NOT EXISTS employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50),
    salary NUMERIC(10, 2),
    hire_date DATE
);


-- 2. Insert sample employee data
INSERT INTO employees
(first_name, last_name, email, department, salary, hire_date)
VALUES
('Aman', 'Sharma', 'aman@example.com', 'IT', 55000, '2024-01-15'),
('Simran', 'Kaur', 'simran@example.com', 'HR', 48000, '2023-06-10'),
('Raj', 'Patel', 'raj@example.com', 'Finance', 62000, '2022-09-20'),
('Neha', 'Singh', 'neha@example.com', 'IT', 70000, '2021-03-05'),
('Arjun', 'Verma', 'arjun@example.com', 'Sales', 45000, '2024-07-12'),
('Priya', 'Mehta', 'priya@example.com', 'Marketing', 52000, '2024-02-20'),
('Karan', 'Gill', 'karan@example.com', 'IT', 68000, '2023-11-15')
ON CONFLICT (email) DO NOTHING;


-- 3. Display all employees
SELECT *
FROM employees
ORDER BY employee_id;

SELECT first_name, last_name
FROM employees;

SELECT *
FROM employees
WHERE department = 'IT';

SELECT *
FROM employees
WHERE salary <= 50000;

SELECT first_name, salary
FROM employees
ORDER BY salary DESC;

SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 2;

SELECT first_name, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC
LIMIT 2;

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 60000;

SELECT first_name,department
FROM employees
WHERE department = 'IT'
OR department = 'HR'

