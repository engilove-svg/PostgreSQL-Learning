SELECT name,
       salary,
       CASE
           WHEN salary >= 70000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_level
FROM employees;

SELECT position,
       status,
       CASE
           WHEN status = 'Offer' THEN 'Successful'
           SELECT position,
       status,
       CASE
           WHEN status = 'Offer' THEN 'Successful'
           WHEN status = 'Interview' THEN 'In Progress'
           ELSE 'Closed'
       END AS application_stage
FROM applications;