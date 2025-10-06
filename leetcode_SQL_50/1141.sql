SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27' 
GROUP BY activity_date
-- we are asked to find 30 days before 2019-07-27 and this date is included so we'll just subtract 29 days and the date will be 2019-06-28. 