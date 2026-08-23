-- LeetCode #1141
-- User Activity for the Past 30 Days I

-- Problem:
-- Find the number of active users for each day
-- during the 30-day period ending on 2019-07-27.

SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN
      SUBDATE('2019-07-27', INTERVAL 29 DAY)
      AND '2019-07-27'
GROUP BY activity_date;