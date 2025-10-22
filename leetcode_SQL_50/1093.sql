DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
WHERE p1.id > p2.id;
-- Keep the record with smallest id.

-- Delete all others with same email.