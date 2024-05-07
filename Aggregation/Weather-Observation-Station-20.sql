-- Weather Observation Station 20
-- Author: Shefali Kolge

SELECT ROUND(lat_n, 4) AS median
FROM (
    SELECT lat_n, row_number() OVER(ORDER BY lat_n) AS row_num, COUNT(lat_n) OVER() AS total_row
    from station
    ) AS subquery
WHERE row_num = CEIL(total_row/2);