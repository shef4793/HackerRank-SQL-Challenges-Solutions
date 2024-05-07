-- Weather Observation Station 16
-- Author: Shefali Kolge

SELECT ROUND(
    (SELECT MIN(lat_n)
    FROM station
    WHERE lat_n > 38.7780),
    4);