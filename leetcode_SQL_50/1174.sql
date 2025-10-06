SELECT ROUND(SUM(IF(order_date=customer_pref_delivery_date, 1, 0))*100/COUNT(*), 2) AS immediate_percentage
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date ASC) AS rn
    FROM Delivery
) t
WHERE rn=1;