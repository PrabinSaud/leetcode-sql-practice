-- LeetCode #197
-- Rising Temperature

SELECT current_day.id
FROM Weather AS current_day
JOIN Weather AS previous_day
    ON current_day.record_date = previous_day.record_date + 1
WHERE current_day.temperature > previous_day.temperature;