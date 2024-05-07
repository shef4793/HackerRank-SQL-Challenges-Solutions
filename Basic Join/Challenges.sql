-- Challenges
-- Author: Shefali Kolge

SELECT h.hacker_id, name, COUNT(challenge_id) AS cnt
FROM hackers h
JOIN challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, name
HAVING cnt >= (
    SELECT COUNT(challenge_id) 
    FROM challenges
    GROUP BY hacker_id
    ORDER BY COUNT(*) DESC LIMIT 1
) 
OR cnt NOT IN (
    SELECT COUNT(challenge_id) 
    FROM challenges
    GROUP BY hacker_id
    HAVING hacker_id <> h.hacker_id
)
ORDER BY COUNT(challenge_id) DESC, h.hacker_id;