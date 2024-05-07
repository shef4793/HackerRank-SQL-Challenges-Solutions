-- Placements
-- Author: Shefali Kolge

WITH id_sal AS (
    SELECT s.id, name, p.salary
    FROM students s 
    JOIN packages p ON s.id = p.id
),
friend_sal AS (
    SELECT f.id, f.friend_id, p.salary
    FROM friends f 
    JOIN packages p ON f.friend_id = p.id
)
SELECT s.name
FROM id_sal s 
JOIN friend_sal f ON s.id = f.id
WHERE f.salary > s.salary
ORDER BY f.salary;