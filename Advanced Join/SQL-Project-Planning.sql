-- SQL Project Planning
-- Author: Shefali Kolge

WITH ps AS (
    SELECT task_id, start_date, rank() OVER(ORDER BY start_date) AS rs
    FROM projects
    WHERE start_date NOT IN (SELECT end_date FROM projects)
),
pe AS (
    SELECT task_id, end_date, rank () OVER(ORDER BY end_date) AS re
    FROM projects
    WHERE end_date NOT IN (SELECT start_date FROM projects)
)
SELECT start_date, end_date
FROM ps, pe
WHERE rs=re
ORDER BY DATEDIFF(day, start_date, end_date), start_date;