-- Calculate percentage of users attending each contest.
-- Use total users from Users table for denominator.

SELECT c.contest_id,
       ROUND(COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register r
JOIN Contests c
ON r.contest_id = c.contest_id
GROUP BY c.contest_id
ORDER BY percentage DESC, c.contest_id ASC;
