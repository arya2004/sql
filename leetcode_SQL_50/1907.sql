SELECT cat.category, COUNT(t.account_id) AS accounts_count
FROM (SELECT 'Low Salary' AS category UNION SELECT 'Average Salary' UNION SELECT 'High Salary'
) cat
LEFT JOIN (SELECT account_id, income, (CASE WHEN income<20000 THEN 'Low Salary' WHEN income>=20000 AND income<=50000 THEN "Average Salary" WHEN income>50000 THEN "High Salary" END) AS salary_type
FROM Accounts) t
ON cat.category = t.salary_type
GROUP BY cat.category;
