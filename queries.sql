-- Superstore Sales Analysis
-- By: [Tumhara Naam]

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales 
FROM orders;

-- 2. Top 5 Products
SELECT Product_Name, SUM(Sales) AS Total
FROM orders
GROUP BY Product_Name
ORDER BY Total DESC
LIMIT 5;

-- 3. Sales by Category
SELECT Category, SUM(Sales) AS Total
FROM orders
GROUP BY Category;

-- 4. Top 5 Customers
SELECT Customer_Name, SUM(Sales) AS Total_Spent
FROM orders
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 5;

-- 5. Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Region;