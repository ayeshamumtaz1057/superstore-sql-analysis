-- Question: What are the top 5 selling products by revenue?
SELECT
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM orders
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- Results:
-- Canon imageCLASS 2200 Advanced Copier                      -> $61,599.82
-- Fellowes PB500 Electric Punch Plastic Comb Binding Machine -> $27,453.38
-- Cisco TelePresence System EX90 Videoconferencing Unit      -> $22,638.48
-- HON 5400 Series Task Chairs for Big and Tall                -> $21,870.58
-- GBC DocuBind TL300 Electric Binding System                  -> $19,823.48
