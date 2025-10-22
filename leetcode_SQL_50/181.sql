SELECT e.name AS Employee
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;
-- Self-join Employee as e (employee) and m (manager).
-- Compare e.salary > m.salary.
-- Returns employees earning more than their manager.