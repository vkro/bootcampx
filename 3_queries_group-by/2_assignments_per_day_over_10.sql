SELECT day, count(*) AS total_assignments
FROM assignments
GROUP BY day
HAVING  10 <= count(*)
ORDER BY day;