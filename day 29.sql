SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id;

SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.id;

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id
WHERE departments.department_name = 'IT';

SELECT employees.name,
       departments.department_name,
       employees.salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id
ORDER BY employees.salary DESC;

SELECT departments.department_name,
       COUNT(employees.id)
FROM departments
LEFT JOIN employees
ON departments.id = employees.department_id
GROUP BY departments.department_name;

SELECT applications.position,
       companies.company_name,
       industries.industry_name
FROM applications
INNER JOIN companies
ON applications.company_id = companies.id
INNER JOIN industries
ON companies.industry_id = industries.id;