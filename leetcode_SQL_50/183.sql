SELECT DISTINCT customer_id
FROM Orders
WHERE YEAR(order_date) = 2020;
-- YEAR(order_date) extracts year.

-- DISTINCT ensures each customer appears once.