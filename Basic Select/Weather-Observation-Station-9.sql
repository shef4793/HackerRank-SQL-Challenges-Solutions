-- Weather Observation Station 9
-- Author: Shefali Kolge

SELECT DISTINCT city
FROM station
WHERE LEFT(city,1) NOT IN ('A','E','I','O','U');