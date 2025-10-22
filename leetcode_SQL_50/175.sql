SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;
-- GROUP BY email groups duplicates.
-- HAVING COUNT(*) > 1 filters only repeated emails.