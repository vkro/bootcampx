const { Pool } = require('pg');
const userInput = process.argv.splice(2);

const queryString = `
SELECT students.id as student_id, students.name as name, cohorts.name AS cohort
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
LIMIT $2;
`;

const cohortName = userInput[0];
const limit = userInput[1];

const values = [`%${cohortName}%`, limit];

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(queryString, values)

.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort.`)
  })
})


.catch(err => console.error('query error', err.stack));
