-- Problem 182: Customers Who Never Order
SELECT customer_id
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customer_id = c.customer_id
);
