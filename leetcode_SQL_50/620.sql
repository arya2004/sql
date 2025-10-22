SELECT *
FROM Cinema
WHERE id % 2 = 1         -- Odd IDs
  AND description != 'boring'  -- Not boring movies
ORDER BY rating DESC;
-- Display movies with odd IDs and ratings not equal to 'boring'.
-- Sort by descending rating.