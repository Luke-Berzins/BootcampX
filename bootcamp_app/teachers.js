const cohortName = process.argv[2];
// Store all potentially malicious values in an array. 
const values = [`%${cohortName}%`];
const { Pool } = require('pg');


const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `
SELECT DISTINCT teachers.name as teacher,
cohorts.name as cohort 
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
INNER JOIN cohorts on teacher_id = teachers.id
WHERE cohorts.name LIKE $1;
`

pool.query(queryString, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
});


