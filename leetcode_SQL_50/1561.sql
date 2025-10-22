SELECT num
FROM Numbers n1
WHERE EXISTS (
    SELECT 1
    FROM Numbers n2
    WHERE n2.num = n1.num - 1
)
AND EXISTS (
    SELECT 1
    FROM Numbers n3
    WHERE n3.num = n1.num + 1
);