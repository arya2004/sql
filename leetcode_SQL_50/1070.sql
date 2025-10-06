SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM Sales s
(
    SELECT product_id, ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY year)
    FROM Sales
)
-- as we are basically finding first year from the subquery so it will give us first_year for a corresponding product_id and if those 2 exists simultaneously same for a particular row in s then we will take them otherwise not