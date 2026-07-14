-- Question: What is the total sales revenue?
SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM orders;

-- Result: Total_Sales = $2,297,200.86
