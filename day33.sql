// CTSs
WITH high_earners AS (
    SELECT name, salary
    FROM employees
    WHERE salary > 60000
)
SELECT name, salary
FROM high_earners;

WITH application_counts AS (
    SELECT company_id,
           COUNT(*) AS application_count
    FROM applications
    GROUP BY company_id
)
SELECT *
FROM application_counts
WHERE application_count > 2;

WITH department_stats AS(
    SELECT employees.department_id,
    AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM department_stats

WITH department_stats AS (
    SELECT department_id,
           AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM department_stats
WHERE average_salary > 60000

WITH application_counts AS (
    SELECT company_id,
           COUNT(*) AS application_count
    FROM applications
    GROUP BY company_id
)
SELECT companies.company_name ,
       application_counts.application_count
FROM companies
LEFT JOIN application_counts
    ON companies.id = application_counts.company_id


// multiple CTSs

WITH application_counts AS (
    SELECT company_id,
           COUNT(*) AS total_applications
    FROM applications
    GROUP BY company_id
),
interview_counts AS (
    SELECT company_id,
           COUNT(*) AS total_interviews
    FROM applications
    WHERE status = 'Interview'
    GROUP BY company_id
)
SELECT application_count.company_id,
       application_counts.total_applications,
       interview_counts.total_interviews
FROM application_counts
JOIN interview_counts
    ON application_counts.company_id=interview_counts.company_id


with salary_stats AS(
    SELECT
     MIN(salary) AS minimum_salary,
     MAX(salary) AS maximum_salary,
     AVG(salary) AS average_salary
     FROM employees
)
SELECT *
FROM salary_stats;

with department_stats AS(
    SELECT 
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT department_id  
FROM department_stats
WHERE average_salary > 50000

WITH employee_salary AS(
    SELECT
         name,
         salary
    FROM employees
)
SELECT
       name,
       salary
    CASE 
        WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employee_salary


WITH active_companies AS (
    SELECT company_id,
           COUNT(*) AS application_count
    FROM applications
    GROUP BY company_id
    HAVING COUNT(*) > 2
)
SELECT *
FROM active_companies;


WITH interview_companies AS (
    SELECT company_id,
           COUNT(*) AS interview_count
    FROM applications
    WHERE status = 'Interview'
    GROUP BY company_id
    HAVING COUNT(*) >= 2
)
SELECT *
FROM interview_companies;


WITH Overall_stats AS (
    SELECT AVG(salary) AS overall_average
    FROM employees
),
department_stats AS (
    SELECT department_id,
    AVG(salary) as department_average
    FROM employees
    GROUP BY department_id
)
SELECT department_stats.department_id ,
       department_stats.department_average
FROM department_stats
CROSS JOIN Overall_stats
WHERE department_stats.department_average > overall_stats.overall_average;


