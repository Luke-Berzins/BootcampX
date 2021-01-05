SELECT cohorts.name as cohort_name,
count(students.id) as total_students
FROM students
JOIN cohorts on cohorts.id=cohort_id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY count(students.id); 