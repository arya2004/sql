SELECT (SELECT COUNT(CITY) AS total FROM STATION) - 
(SELECT COUNT(DISTINCT CITY) as uniq FROM STATION)
