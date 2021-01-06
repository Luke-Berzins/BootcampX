SELECT teachers.name as teacher,
MAX(cohorts.name) as cohort,
count(assistance_requests) as total_assistances
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
INNER JOIN cohorts on teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY total_assistances DESC;