SELECT t.department_name AS Department, t.name AS Employee, t.salary AS Salary
FROM (
    SELECT e.*, d.name AS department_name, 
    DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS rn
    FROM Employee e
    JOIN Department d
    ON e.departmentId = d.id
) t
WHERE t.rn<4
ORDER BY t.departmentId, t.name;