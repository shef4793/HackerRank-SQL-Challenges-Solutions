-- Weather Observation Station 2
-- Author: Shefali Kolge

SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2) 
FROM station;