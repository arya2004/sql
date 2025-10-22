SELECT score,
       DENSE_RANK() OVER (ORDER BY score DESC) AS rank
FROM Scores;
-- DENSE_RANK() assigns ranks without skipping numbers for ties.

-- ORDER BY score DESC ensures highest scores get rank 1.