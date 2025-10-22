-- We need to find employees who got bonuses < 1000 or no bonus at all.
-- Use LEFT JOIN to include employees even if they don't have an entry in Bonus table.

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
-- 'b.bonus IS NULL' covers employees with no bonus.
