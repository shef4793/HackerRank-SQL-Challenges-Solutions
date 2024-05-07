-- Ollivander's Inventory
-- Author: Shefali Kolge

SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands w
JOIN wands_property wp USING(code)
WHERE wp.is_evil = 0
AND w.coins_needed = (
    SELECT MIN(s_w.coins_needed) 
    FROM wands s_w
    JOIN wands_property s_wp USING(code)
    WHERE s_wp.age = wp.age AND w.power = s_w.power
)
ORDER BY w.power DESC, wp.age DESC;