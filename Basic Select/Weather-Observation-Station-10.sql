-- Weather Observation Station 10
-- Author: Shefali Kolge

SELECT DISTINCT city
FROM station
WHERE RIGHT(city,1) NOT IN ('a','e','i','o','u');