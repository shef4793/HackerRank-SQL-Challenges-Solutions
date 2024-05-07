-- Symmetric Pairs
-- Author: Shefali Kolge

WITH func AS (
    SELECT x, y, row_number() OVER() AS rn 
    FROM functions
)
SELECT DISTINCT f1.x, f1.y
FROM func f1
JOIN func f2 ON f1.x=f2.y AND f2.x=f1.y
WHERE f1.x<=f1.y
AND f1.rn<>f2.rn
ORDER BY f1.x;