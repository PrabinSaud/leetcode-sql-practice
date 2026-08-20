-- LeetCode #1934
-- Confirmation Rate
-- Alternative Approach: AVG() with Boolean Expression

SELECT
    s.user_id,
    IFNULL(
        ROUND(AVG(c.action = 'confirmed'), 2),
        0
    ) AS confirmation_rate
FROM Signups AS s
LEFT JOIN Confirmations AS c
    ON s.user_id = c.user_id
GROUP BY
    s.user_id;