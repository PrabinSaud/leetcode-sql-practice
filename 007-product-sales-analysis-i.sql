-- LeetCode #1068
-- Product Sales Analysis I

-- Problem :
-- Report the product name, year, and price for each sale.

SELECT
    p.product_name,
    s.year,
    s.price
FROM Sales AS s
JOIN Product AS p
    ON s.product_id = p.product_id;