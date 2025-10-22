SELECT a.machine_id,
    ROUND(SUM(b.timestamp - a.timestamp) / COUNT(a.activity_type), 3) AS processing_time
FROM Activity a
JOIN Activity b
ON a.machine_id = b.machine_id
AND a.process_id = b.process_id
AND a.activity_type = 'start'
AND b.activity_type = 'end'
GROUP BY a.machine_id;

-- a.timestamp < b.timestamp is not working bcz in some testcases if start=end for some activity then it will give us error as it will not count that activity and avg will be for one less activity. 
-- Join start–end pairs to compute duration per machine.