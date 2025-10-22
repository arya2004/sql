-- Problem 184: Department Highest Salary
SELECT e.department_id, e.salary
FROM Employee e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE department_id = e.department_id
);
