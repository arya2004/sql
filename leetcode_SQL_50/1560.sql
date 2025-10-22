-- Problem 1560: Consecutive Numbers
SELECT n1.num
FROM Numbers n1
JOIN Numbers n2
ON n1.num = n2.num + 1;
-- Join the table with itself to find num that has a predecessor (num-1) in the table.