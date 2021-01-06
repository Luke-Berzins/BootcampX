SELECT cohorts.name as name, 
SUM(completed_at - started_at) as total_assistance_time 
FROM assistance_requests
JOIN students on students.id = assistance_requests.student_id
JOIN cohorts on students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_assistance_time;