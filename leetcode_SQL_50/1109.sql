SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
-- Self-join on DATEDIFF = 1 to compare consecutive days.

-- Filter only when current day is hotter