SELECT e.employee_id, e.department_id
FROM Employee e
LEFT JOIN (
    SELECT employee_id, COUNT(department_id) AS no_dept
    FROM Employee
    GROUP BY employee_id
) t
ON e.employee_id = t.employee_id
WHERE no_dept = 1
OR no_dept>1 AND primary_flag='Y';