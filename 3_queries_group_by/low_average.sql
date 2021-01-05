SELECT students.name as student,
avg(assignment_submissions.duration) as average_assignment_durations,
avg(assignments.duration) as estimated_durations
FROM students
JOIN assignment_submissions on students.id = student_id
JOIN assignments on assignments.id = assignment_id
WHERE students.end_date IS null
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_durations;