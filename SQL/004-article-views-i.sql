-- LeetCode #1148
-- Article Views I

-- Problem:
-- Find the IDs of authors who viewed at least one of their own articles.
-- Return the IDs in ascending order.

SELECT DISTINCT viewer_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;