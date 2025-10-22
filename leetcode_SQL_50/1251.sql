-- Join Prices with UnitsSold where sale_date is within price validity period.
-- Then compute average = (Σ(price * units)) / (Σ(units)) per product.

SELECT p.product_id,
       ROUND(SUM(p.price * u.units) / SUM(u.units), 2) AS average_price
FROM Prices p
JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
