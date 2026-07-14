-- Question: Who are the top 5 customers by total spend?
SELECT
    Customer_Name,
    ROUND(SUM(Sales), 2) AS Total_Spent
FROM orders
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 5;

-- Results:
-- Sean Miller     -> $25,043.05
-- Tamara Chand    -> $19,052.22
-- Raymond Buch    -> $15,117.34
-- Tom Ashbrook    -> $14,595.62
-- Adrian Barton   -> $14,473.57
