-- Get each day with total number and duration of assignments

SELECT day, COUNT(assignments.*) as number_of_assignments, SUM(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;