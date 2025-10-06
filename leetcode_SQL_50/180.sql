SELECT DISTINCT t.rn AS ConsecutiveNums
FROM (SELECT *, 
       IF(LEAD(num, 1) OVER () = num AND LEAD(num, 2) OVER () = num, num, null) AS rn
FROM Logs) t
WHERE t.rn IS NOT NULL;
