-- African Cities
-- Author: Shefali Kolge

SELECT c1.name
FROM city c1
LEFT JOIN country c2 ON c1.countrycode = c2.code
WHERE c2.continent = 'Africa';