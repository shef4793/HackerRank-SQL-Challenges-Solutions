-- Weather Observation Station 4
-- Author: Shefali Kolge

SELECT (COUNT(city) - COUNT(DISTINCT city))
FROM station;