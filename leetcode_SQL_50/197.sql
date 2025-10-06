SELECT w2.id
FROM Weather w1
LEFT JOIN Weather w2 
ON w2.recordDate - INTERVAL 1 DAY = w1.recordDate -- return w2.date - w1.date = 1
WHERE w1.temperature < w2.temperature;