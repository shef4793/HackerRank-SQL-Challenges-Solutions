-- Weather Observation Station 13
-- Author: Shefali Kolge

SELECT TRUNCATE(SUM(lat_n), 4) 
FROM station
WHERE lat_n >38.7880
AND lat_n <137.2345;