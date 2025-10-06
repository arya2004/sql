SELECT q.query_name, IFNULL(ROUND(AVG(q.rating/q.position), 2), 0) AS quality, IFNULL(ROUND((SUM(IF(q.rating<3, 1, 0))/COUNT(*))*100, 2), 0) AS poor_query_percentage
FROM Queries q
GROUP BY q.query_name;