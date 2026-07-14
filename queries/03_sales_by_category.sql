-- Question: How do sales break down by category?
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Results:
-- Technology       -> $836,154.03
-- Furniture        -> $741,999.80
-- Office Supplies  -> $719,047.03
