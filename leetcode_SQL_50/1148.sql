SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id=viewer_id 
ORDER BY author_id ASC;
-- DISTINCT is used to select only unique row tuples, if there are any duplicates then it will drop it. 