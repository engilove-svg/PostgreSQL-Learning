SELECT *
FROM applications
WHERE  status = 'Interview'

SELECT * 
FROM applications
ORDER BY application_date DESC 
LIMIT 2;

SELECT status , COUNT(*) AS total
FROM applications
GROUP BY status;

SELECT company_name, COUNT(*) AS total
FROM applications
GROUP BY company_name;



