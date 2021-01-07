const { Pool } = require('pg');
let myArgs = process.argv.slice(2);

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name as teacher,
cohorts.name as cohort 
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
INNER JOIN cohorts on teacher_id = teachers.id
WHERE cohorts.name = '${myArgs[0]}';
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
});