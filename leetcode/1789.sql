SELECT employee_id, department_id
FROM (
    SELECT employee_id, department_id, primary_flag,
           DENSE_RANK() OVER (PARTITION BY employee_id ORDER BY primary_flag ) AS rnk
    FROM Employee
) t
WHERE rnk = 1;
