-- Weather Observation Station 8
-- Author: Shefali Kolge

SELECT DISTINCT city 
FROM station 
WHERE LEFT(city,1) IN ('A','E','I','O','U') AND RIGHT(city,1) IN ('a','e','i','o','u');