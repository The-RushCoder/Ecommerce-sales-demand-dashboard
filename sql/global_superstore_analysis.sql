-- Top Products
SELECT Product_Name,
SUM(Sales) Sales
FROM global_superstore_analysis
GROUP BY Product_Name
ORDER BY Sales DESC;

-- Category Sales
SELECT Category,
SUM(Sales)
FROM global_superstore_analysis
GROUP BY Category;

-- Monthly Sales
SELECT
YEAR,
MONTH,
SUM(Sales)
FROM global_superstore_analysis
GROUP BY YEAR,
MONTH;

-- Top Customers
SELECT
Customer_Name,
SUM(Sales)
FROM global_superstore_analysis
GROUP BY Customer_Name
ORDER BY SUM(Sales) DESC;