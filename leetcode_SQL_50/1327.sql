SELECT p.product_name, SUM(IF(DATE_FORMAT(o.order_date, '%Y-%m')='2020-02', o.unit, 0)) AS unit
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
GROUP BY o.product_id
HAVING unit>=100