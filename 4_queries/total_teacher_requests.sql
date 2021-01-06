SELECT name, count(teacher_id) FROM teachers 
JOIN assistance_requests ON teachers.id = teacher_id
GROUP BY name 
HAVING name = 'Waylon Boehm';