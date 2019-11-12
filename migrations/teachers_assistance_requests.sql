CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  start_date DATE,
  end_date DATE,
  is_active BOOLEAN
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  created_at DATETIME,
  started_at DATETIME,
  completed_at DATETIME,
  student_feedback VARCHAR(255),
  teacher_feedback VARCHAR(255)
)