SELECT name, email, phone 
FROM students 
WHERE github IS null
AND end_date < current_date;