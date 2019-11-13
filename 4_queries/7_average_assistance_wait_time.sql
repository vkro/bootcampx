-- Calculate average time it take to start an assistance request

SELECT AVG(started_at - created_at) AS average_wait_time
FROM assistance_requests;