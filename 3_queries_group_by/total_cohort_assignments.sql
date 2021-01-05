SELECT cohorts.name as cohort, count(student_id) as total_submissions
FROM cohorts
JOIN students on cohorts.id = cohort_id
JOIN assignment_submissions on students.id = student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;