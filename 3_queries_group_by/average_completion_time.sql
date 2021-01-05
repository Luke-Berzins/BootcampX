SELECT students.name as student,
avg(duration) as average_assignment_durations
FROM students
JOIN assignment_submissions on students.id = student_id
WHERE end_date IS null
GROUP BY students.name
ORDER BY average_assignment_durations DESC;