SELECT DISTINCT teachers.name as teacher,
cohorts.name as cohort 
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
INNER JOIN cohorts on teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;