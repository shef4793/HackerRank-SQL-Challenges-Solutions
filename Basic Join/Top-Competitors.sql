-- Top Competitors
-- Author: Shefali Kolge

SELECT h.hacker_id, h.name
FROM Hackers h
JOIN Submissions s USING(hacker_id)
JOIN Challenges c USING(challenge_id)
JOIN Difficulty d USING(difficulty_level)
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(DISTINCT c.challenge_id) > 1
ORDER BY COUNT(DISTINCT c.challenge_id) DESC, h.hacker_id;