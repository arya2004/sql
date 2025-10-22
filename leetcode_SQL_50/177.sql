-- Problem 177: Nth Highest Salary
SET @n = 3;

SELECT DISTINCT salary AS NthHighestSalary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET @n - 1;

-- ORDER BY salary DESC → sort salaries from highest to lowest.

-- LIMIT 1 OFFSET n-1 → skip first n-1 salaries, pick nth.