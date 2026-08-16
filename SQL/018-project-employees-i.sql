-- LeetCode #1075
-- Project Employees I

-- Problem:
-- Find the average experience years of employees
-- working on each project.

SELECT
    p.project_id,
    ROUND(
        SUM(e.experience_years) / COUNT(e.employee_id),
        2
    ) AS average_years
FROM Project AS p
LEFT JOIN Employee AS e
    ON p.employee_id = e.employee_id
GROUP BY
    p.project_id;



-- OR 

SELECT
    p.project_id,
    ROUND(
        AVG(e.experience_years),2
    ) AS average_years
FROM Project AS p
LEFT JOIN Employee AS e
    ON p.employee_id = e.employee_id
GROUP BY
    p.project_id;