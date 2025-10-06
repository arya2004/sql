SELECT name
FROM Customer
WHERE COALESCE(referee_id, -1) <> 2
-- COALESCE(exp1, exp2, ....) it basically finds the first null value and replaces it with first NOT NULL value, for the query result like IFNULL it doesn't update the original table it only shows that for query result. 