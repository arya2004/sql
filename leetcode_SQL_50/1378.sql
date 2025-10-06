SELECT e_u.unique_id, e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI as e_u
ON e.id=e_u.id