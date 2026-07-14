-- Question: Which regions perform best in terms of sales and profit?
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Results:
-- West     -> Sales: $725,457.82 | Profit: $108,418.45
-- East     -> Sales: $678,781.24 | Profit: $91,522.78
-- Central  -> Sales: $501,239.89 | Profit: $39,706.36
-- South    -> Sales: $391,721.91 | Profit: $46,749.43
