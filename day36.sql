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