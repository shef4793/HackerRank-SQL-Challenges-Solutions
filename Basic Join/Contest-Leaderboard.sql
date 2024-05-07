-- Contest Leaderboard
-- Author: Shefali Kolge

SELECT h.hacker_id, name, SUM(score) AS total_score
FROM hackers h
JOIN (
    SELECT hacker_id, challenge_id, MAX(score) AS score
    FROM submissions
    GROUP BY hacker_id, challenge_id
    ORDER BY hacker_id, challenge_id
) AS s
ON h.hacker_id = s.hacker_id
GROUP BY h.hacker_id, name
HAVING total_score > 0
ORDER BY total_score DESC, h.hacker_id ASC;