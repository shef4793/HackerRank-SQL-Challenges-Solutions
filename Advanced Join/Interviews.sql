-- Interviews
-- Author: Shefali Kolge

WITH s_stats AS (
    SELECT cl.contest_id, SUM(total_submissions) sum_ts, SUM(total_accepted_submissions) sum_tas
    FROM Submission_Stats ss
    INNER JOIN Challenges ch ON ch.challenge_id = ss.challenge_id
    INNER JOIN Colleges cl ON cl.college_id = ch.college_id
    GROUP BY cl.contest_id
),
v_stats AS (
    SELECT cl.contest_id, SUM(total_views) sum_tv, SUM(total_unique_views) sum_tuv
    FROM View_Stats vs
    INNER JOIN Challenges ch ON ch.challenge_id = vs.challenge_id
    INNER JOIN Colleges cl ON cl.college_id = ch.college_id
    GROUP BY cl.contest_id
)
SELECT c.contest_id, hacker_id, name, sum_ts, sum_tas, sum_tv, sum_tuv
FROM contests c 
INNER JOIN s_stats ss ON c.contest_id = ss.contest_id
INNER JOIN v_stats vs ON c.contest_id = vs.contest_id
WHERE (sum_ts>0 OR sum_tas>0 OR sum_tv>0 OR sum_tuv>0)
ORDER BY c.contest_id;