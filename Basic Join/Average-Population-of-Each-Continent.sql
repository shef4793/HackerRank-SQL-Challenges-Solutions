-- Average Population of Each Continent
-- Author: Shefali Kolge

SELECT c2.continent, FLOOR(AVG(c1.population))
FROM city c1
INNER JOIN country c2 ON c1.countrycode = c2.code
GROUP BY c2.continent;