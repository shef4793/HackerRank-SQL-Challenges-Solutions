-- Print Prime Numbers
-- Author: Shefali Kolge

WITH nums AS (
    SELECT 2 AS n
        UNION ALL
    SELECT n+1
    FROM nums 
    WHERE n < 1000
),
prime_nums AS (
    SELECT * 
    FROM nums a
    WHERE NOT EXISTS (
        SELECT * 
        FROM nums b
        WHERE a.n%b.n = 0 and a.n<>b.n
    )
)
SELECT string_agg(n, '&') 
FROM prime_nums
OPTION (maxrecursion 1000);