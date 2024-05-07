-- Weather Observation Station 3
-- Author: Shefali Kolge

SELECT city 
FROM station 
WHERE id%2 = 0 
GROUP BY city;