SELECT sell_date, COUNT(DISTINCT product) AS num_sold, 
GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
-- The GROUP_CONCAT() function in SQL is used to concatenate values from multiple rows into a single string, grouped by a column. It's particularly useful for summarizing data.