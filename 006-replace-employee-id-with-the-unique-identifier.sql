-- LeetCode #1378
-- Replace Employee ID With The Unique Identifier

-- Problem:
-- Show the unique ID of each employee.
-- If an employee does not have a unique ID,
-- return NULL.
-- Also return the employee's name.

SELECT
    eu.unique_id,
    e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS eu
    ON e.id = eu.id;