WITH cte AS(
    SELECT DISTINCT product_id AS id FROM Products
)
SELECT cte.id AS product_id, IFNULL((
    SELECT p.new_price 
    FROM Products p
    WHERE cte.id=p.product_id AND p.change_date<='2019-08-16'
    ORDER BY p.change_date DESC
    LIMIT 1
) , 10) AS price
FROM cte