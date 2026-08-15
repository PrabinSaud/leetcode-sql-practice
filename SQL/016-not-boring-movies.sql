-- LeetCode #620
-- Not Boring Movies

-- Problem:
-- Find movies with an odd-numbered ID and a description
-- that is not "boring".
-- Return the results ordered by rating in descending order.

SELECT
    id,
    movie,
    description,
    rating
FROM Cinema
WHERE id % 2 = 1
  AND description <> 'boring'
ORDER BY rating DESC;