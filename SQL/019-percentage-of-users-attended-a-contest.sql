-- LeetCode #1633
-- Percentage of Users Attended a Contest

-- Problem:
-- Calculate the percentage of users who registered
-- for each contest.

SELECT
    r.contest_id,
    ROUND(
        COUNT(r.user_id) / (SELECT COUNT(*) FROM Users) * 100,
        2
    ) AS percentage
FROM Register AS r
GROUP BY
    r.contest_id
ORDER BY
    percentage DESC,
    r.contest_id ASC;