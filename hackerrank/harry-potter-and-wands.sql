SELECT w.id, p.age, w.coins_needed, w.power from WANDS w
JOIN Wands_Property p on w.code = p.code
WHERE p.is_evil = 0
ORDER BY w.power DESC, p.age DESC;