-- SELECT e1.name
-- FROM Employee e1
-- INNER JOIN Employee e2
-- ON e1.id = e2.managerId
-- GROUP BY e1.Id
-- HAVING COUNT(e1.Id)>=5;

-- using subquery 
SELECT e.name
FROM Employee e
WHERE e.id IN (
  SELECT managerId
  FROM Employee
  GROUP BY managerId
  HAVING COUNT(id) >= 5
);