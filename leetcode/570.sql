
SELECT name FROM Employee
WHERE id in (SELECT e.managerId
FROM Employee e 
WHERE managerId IS NOT NULL
GROUP BY e.managerId
HAVING  COUNT(*) >= 5);

