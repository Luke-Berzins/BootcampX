SELECT AVG(total_a) as average_total_duration
FROM (SELECT SUM(completed_at - started_at) as total_a
FROM assistance_requests
JOIN students on students.id = assistance_requests.student_id
JOIN cohorts on students.cohort_id = cohorts.id
GROUP BY cohorts.name) AS avg_assistance_time;