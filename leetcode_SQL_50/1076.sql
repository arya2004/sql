SELECT 
    project_id
FROM Project p
JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY project_id
HAVING AVG(e.experience_years) = (
    SELECT MAX(avg_exp)
    FROM (
        SELECT AVG(experience_years) AS avg_exp
        FROM Project p2
        JOIN Employee e2
        ON p2.employee_id = e2.employee_id
        GROUP BY project_id
    ) AS subquery
);
-- Calculate average experience per project.

-- Use subquery to find max of these averages.

-- Filter projects matching that max value.