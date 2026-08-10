-- LeetCode #1683
-- Invalid Tweets

-- Problem:
-- Find the tweet_id of tweets whose content
-- contains more than 15 characters.

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;