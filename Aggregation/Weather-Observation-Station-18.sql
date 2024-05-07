-- Weather Observation Station 18
-- Author: Shefali Kolge

SELECT ROUND(
    ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MIN(long_w) - MAX(long_w))
, 4) 
FROM station;