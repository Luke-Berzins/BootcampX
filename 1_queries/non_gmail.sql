SELECT name, id
FROM students 
WHERE phone IS null 
AND email NOT LIKE '%gmail.com';
