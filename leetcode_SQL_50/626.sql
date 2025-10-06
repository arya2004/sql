SELECT t.one AS id, IFNULL(t.two_name, t.one_name) AS student
FROM 
(SELECT s1.id AS one, s1.student AS one_name, s2.id AS two, s2.student AS two_name
FROM Seat s1
LEFT JOIN Seat s2
ON s2.id = (CASE WHEN s1.id%2=0 THEN s1.id-1 
WHEN s1.id%2=1 THEN s1.id+1
END)) t