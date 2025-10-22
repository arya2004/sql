-- Problem 1110: Rising Temperature II
SELECT id
FROM (
    SELECT id, temperature,
           LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp
    FROM Weather
) t
WHERE temperature > prev_temp;
-- LAG(temperature) gets previous day’s temperature.
-- Filter rows where current temp > previous temp.