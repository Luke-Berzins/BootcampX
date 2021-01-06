SELECT count(assistance_requests.id) as total_assistances,
name
FROM assistance_requests
JOIN students on student_id = students.id
GROUP BY students.name
HAVING name = 'Elliot Dickinson';