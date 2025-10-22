SELECT 
    product_id,
    MIN(year) AS first_year
FROM Sales
GROUP BY product_id;
-- MIN(year) gives earliest sale year per product.