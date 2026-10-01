EXPLAIN
SELECT *
FROM applications
WHERE status = 'Applied';

CREATE INDEX idx_applications_application_date
ON applications(date);

EXPLAIN
SELECT *
FROM applications
WHERE company_name = 'OLG';

EXPLAIN ANALYZE
SELECT *
FROM applications
WHERE company_name = 'OLG';

SELECT job_title, status
FROM applications
WHERE company_name = 'OLG'
  AND status = 'Applied';
CREATE INDEX idx3
ON applications(company_name, status);