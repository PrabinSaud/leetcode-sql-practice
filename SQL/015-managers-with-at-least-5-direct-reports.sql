-- LeetCode #570
-- Managers with at Least 5 Direct Reports

-- Problem:
-- Find the names of managers who have at least
-- five direct reports.

SELECT
    e1.name
FROM Employee AS e1
JOIN Employee AS e2
    ON e2.managerId = e1.id
GROUP BY
    e1.id,
    e1.name
HAVING COUNT(e2.managerId) >= 5;



-- OR

SELECT 
name
FROM Employee
WHERE id IN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(id) >= 5
);