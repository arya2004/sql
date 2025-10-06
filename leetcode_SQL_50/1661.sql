SELECT a1.machine_id, ROUND(SUM(a2.timestamp-a1.timestamp)/COUNT(*), 3) AS processing_time
FROM Activity a1
INNER JOIN activity a2
ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
AND a1.activity_type='start' AND a2.activity_type='end'
GROUP BY a1.machine_id;
-- a1.timestamp < a2.timestamp is not working bcz in some testcases if start=end for some activity then it will give us error as it will not count that activity and avg will be for one less activity. 