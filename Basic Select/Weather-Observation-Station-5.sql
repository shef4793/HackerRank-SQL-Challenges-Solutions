-- Weather Observation Station 5
-- Author: Shefali Kolge

(SELECT city, LENGTH(city)
FROM station
ORDER BY LENGTH(city) ASC, city LIMIT 1)
UNION ALL
(SELECT city, LENGTH(city)
FROM station
ORDER BY LENGTH(city) DESC, city LIMIT 1);