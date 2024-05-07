-- Weather Observation Station 7
-- Author: Shefali Kolge

SELECT DISTINCT city 
FROM station 
WHERE SUBSTR(city,-1) IN ('a','e','i','o','u');