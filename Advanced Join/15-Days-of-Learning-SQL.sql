-- 15 Days of Learning SQL
-- Author: Shefali Kolge

DECLARE @cons_hackers TABLE (
    submission_date DATE,
    hacker_id int
);
DECLARE @subdate DATE;
DECLARE @remdate DATE;

INSERT INTO @cons_hackers
    SELECT submission_date, hacker_id
    FROM submissions
    WHERE submission_date LIKE '2016-03-01';

SET @subdate = '2016-03-01';
SET @remdate = '2016-03-01';

WHILE @subdate < '2016-03-15'
BEGIN
    SET @subdate = DATEADD(day, 1, @subdate);
    INSERT INTO @cons_hackers
        SELECT s.submission_date, s.hacker_id
        FROM submissions s
        JOIN @cons_hackers ch ON ch.hacker_id = s.hacker_id AND ch.submission_date LIKE @remdate
        WHERE s.submission_date LIKE @subdate;
    SET @remdate = DATEADD(day, 1, @remdate);
END;

WITH max_subs AS (
    SELECT submission_date, s.hacker_id, name, COUNT(s.hacker_id) AS hcount,
    rank() OVER(PARTITION BY submission_date ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC) AS rcount
    FROM submissions s
    JOIN hackers h ON s.hacker_id = h.hacker_id
    GROUP BY submission_date, s.hacker_id, name
)

SELECT ch.submission_date, COUNT(DISTINCT ch.hacker_id), ms.hacker_id, name
FROM @cons_hackers ch
JOIN max_subs ms ON ch.submission_date = ms.submission_date AND rcount = 1
GROUP BY ch.submission_date, ms.hacker_id, name
ORDER BY ch.submission_date;