SELECT requester_id AS id, COUNT(DISTINCT t.accepter_id) AS num
FROM (SELECT requester_id, accepter_id
FROM RequestAccepted

UNION ALL

SELECT accepter_id, requester_id
FROM RequestAccepted) t
GROUP BY t.requester_id
ORDER BY num DESC
LIMIT 1;