-- Weather Observation Station 15
-- Author: Shefali Kolge

SELECT ROUND(long_w, 4) 
FROM station 
WHERE lat_n = (
    SELECT MAX(lat_n) 
    FROM station 
    WHERE lat_n<137.2345
);