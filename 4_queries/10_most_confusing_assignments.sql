-- List each assignment with its total number of assistance requests

SELECT assignments.id, assignments.name AS name, day, chapter, COUNT(assistance_requests.*) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;