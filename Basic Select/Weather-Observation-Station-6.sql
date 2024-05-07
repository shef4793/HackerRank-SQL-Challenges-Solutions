-- Weather Observation Station 6
-- Author: Shefali Kolge

SELECT DISTINCT city 
FROM station 
WHERE LEFT(city,1) IN ('A','E','I','O','U');