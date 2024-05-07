-- Occupations
-- Author: Shefali Kolge

SELECT
    MAX(CASE WHEN occupation = 'doctor' THEN name ELSE NULL END) AS Doctor,
    MAX(CASE WHEN occupation = 'professor' THEN name ELSE NULL END) AS Professor,
    MAX(CASE WHEN occupation = 'singer' THEN name ELSE NULL END) AS Singer,
    MAX(CASE WHEN occupation = 'actor' THEN name ELSE NULL END) AS Actor
FROM (
    SELECT name, occupation, row_number() OVER(PARTITION BY occupation ORDER BY name) AS row_n 
    FROM occupations
) AS sub
GROUP BY sub.row_n;