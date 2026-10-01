EXPLAIN
SELECT *
FROM applications
WHERE status = 'Applied';

CREATE INDEX idx_applications_application_date
ON applications(date);