SELECT (SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1) AS SecondHighestSalary;
-- offset is used to skip 1 row, now as we are using distinct so it will only print 1st maximum salary 1 time, so after 1st row 2nd row will be of 2nd highest salary and since we are selecting in the end, so we will automatically get null if we are not having anything in the table