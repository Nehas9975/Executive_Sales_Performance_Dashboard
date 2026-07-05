 USE superstore_db;

SELECT COUNT(*) AS Total_Records
FROM clean_superstore;

SELECT ROUND(SUM(Sales), 2) AS Total_Sales
FROM clean_superstore;

SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM clean_superstore;

SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM clean_superstore;

SELECT Category,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM clean_superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT Region,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM clean_superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT State,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM clean_superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT City,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM clean_superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Product Name`,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM clean_superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Segment,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM clean_superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT `Ship Mode`,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM clean_superstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;