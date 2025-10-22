SELECT 
    a.player_id,
    a.event_date,
    SUM(b.games_played) AS games_played_so_far
FROM Activity a
JOIN Activity b
ON a.player_id = b.player_id
AND b.event_date <= a.event_date
GROUP BY a.player_id, a.event_date
ORDER BY a.player_id, a.event_date;

-- We join the table with itself (a and b) for cumulative calculation.

-- For every (player, date) pair, sum all games played up to that date.