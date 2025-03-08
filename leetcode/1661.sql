SELECT a.machine_id,  round(avg(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM Activity a
JOIN Activity a2
ON a.machine_id = a2.machine_id AND a.process_id = a2.process_id
AND a.activity_type = 'start' AND a2.activity_type ='end'
GROUP BY a.machine_id;