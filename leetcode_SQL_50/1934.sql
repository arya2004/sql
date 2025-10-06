SELECT s.user_id, ROUND(SUM(IF(c.action='confirmed', 1, 0))/COUNT(s.user_id), 2) AS confirmation_rate -- it means that if c.action = 'confirmed' then add 1 otheriwse add 0 for the current group 
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;