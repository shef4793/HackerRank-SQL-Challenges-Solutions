-- Higher Than 75 Marks
-- Author: Shefali Kolge

SELECT name 
FROM students 
WHERE marks > 75 
ORDER BY RIGHT(name,3), id ASC;