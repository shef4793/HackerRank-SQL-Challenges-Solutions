-- Population Census
-- Author: Shefali Kolge

SELECT SUM(c1.population)
FROM city c1
LEFT JOIN country c2 ON c1.countrycode = c2.code
WHERE c2.continent = 'Asia';