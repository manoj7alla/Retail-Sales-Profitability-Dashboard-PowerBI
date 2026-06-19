CREATE TABLE samplesuperstore (
    Ship_Mode VARCHAR(50),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(100),
    State VARCHAR(100),
    Postal_Code VARCHAR(20),
    Region VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(10,2)
);

#1. Total Sales
SELECT
ROUND(SUM(Sales),2) AS Total_Sales
FROM samplesuperstore;

#2. Total Profit
SELECT
ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore;

#3. Total Quantity Sold
SELECT
SUM(Quantity) AS Total_Quantity
FROM samplesuperstore;

#4. Profit Margin %
SELECT
ROUND((SUM(Profit)/SUM(Sales))*100,2)
AS Profit_Margin_Percentage
FROM samplesuperstore;

#5. Sales by Region
SELECT
Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM samplesuperstore
GROUP BY Region
ORDER BY Total_Sales DESC;

#6. Profit by Region
SELECT
Region,
ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY Region
ORDER BY Total_Profit DESC;

#7. Sales by Category
SELECT
Category,
ROUND(SUM(Sales),2) AS Sales
FROM samplesuperstore
GROUP BY Category
ORDER BY Sales DESC;

#8. Profit by Category
SELECT
Category,
ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY Category
ORDER BY Profit DESC;

#9. Top Sub-Categories by Sales
SELECT
`Sub-Category`,
ROUND(SUM(Sales),2) AS Sales
FROM samplesuperstore
GROUP BY `Sub-Category`
ORDER BY Sales DESC
LIMIT 10;

#10. Top Sub-Categories by Profit
SELECT
`Sub-Category`,
ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY `Sub-Category`
ORDER BY Profit DESC
LIMIT 10;

#11. Loss-Making Sub-Categories
SELECT
`Sub-Category`,
ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY `Sub-Category`
HAVING SUM(Profit) < 0
ORDER BY Profit;

#12. Sales by Segment
SELECT
Segment,
ROUND(SUM(Sales),2) AS Sales
FROM samplesuperstore
GROUP BY Segment
ORDER BY Sales DESC;

#13. Profit by Segment
SELECT
Segment,
ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY Segment
ORDER BY Profit DESC;

#14. Sales by Ship Mode
SELECT
`Ship Mode`,
ROUND(SUM(Sales),2) AS Sales
FROM samplesuperstore
GROUP BY `Ship Mode`
ORDER BY Sales DESC;

#15. Profit by Ship Mode
SELECT
`Ship Mode`,
ROUND(SUM(Profit),2) AS Profit
FROM samplesamplesuperstore
GROUP BY `Ship Mode`
ORDER BY Profit DESC;

#16. Rank Regions by Sales
SELECT
Region,
SUM(Sales) AS Sales,
DENSE_RANK() OVER(
ORDER BY SUM(Sales) DESC
) AS Sales_Rank
FROM samplesuperstore
GROUP BY Region;

#17. Rank Categories by Profit
SELECT
Category,
SUM(Profit) AS Profit,
DENSE_RANK() OVER(
ORDER BY SUM(Profit) DESC
) AS Profit_Rank
FROM samplesuperstore
GROUP BY Category;

#18. Discount Impact Analysis
SELECT
CASE
WHEN Discount = 0 THEN 'No Discount'
WHEN Discount <= 0.20 THEN 'Low Discount'
WHEN Discount <= 0.50 THEN 'Medium Discount'
ELSE 'High Discount'
END AS Discount_Group,
ROUND(SUM(Sales),2) AS Sales,
ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY Discount_Group
ORDER BY Profit DESC;

#19. Most Profitable Cities
SELECT
City,
ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY City
ORDER BY Profit DESC
LIMIT 10;

#20. States with Highest Sales
SELECT
State,
ROUND(SUM(Sales),2) AS Sales
FROM samplesuperstore
GROUP BY State
ORDER BY Sales DESC
LIMIT 10;

#21. States with Highest Profit
SELECT
State,
ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY State
ORDER BY Profit DESC
LIMIT 10;

#22. Category Contribution to Total Sales
SELECT
Category,
ROUND(SUM(Sales),2) AS Sales,
ROUND(
SUM(Sales)*100/
(SUM(SUM(Sales)) OVER()),
2
) AS Percentage_Contribution
FROM samplesuperstore
GROUP BY Category;

#23. Region with Highest Profit Margin
SELECT
Region,
ROUND(
(SUM(Profit)/SUM(Sales))*100,
2
) AS Profit_Margin
FROM samplesuperstore
GROUP BY Region
ORDER BY Profit_Margin DESC;

#24. Top 5 Region-Category Combinations
SELECT
Region,
Category,
ROUND(SUM(Sales),2) AS Sales
FROM samplesuperstore
GROUP BY Region, Category
ORDER BY Sales DESC
LIMIT 5;