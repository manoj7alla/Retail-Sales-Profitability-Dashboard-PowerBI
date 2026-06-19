# Retail-Sales-Profitability-Dashboard-PowerBI

Retail Sales & Profitability Dashboard

Project Overview:
This project presents an interactive Power BI dashboard built using the Sample Superstore dataset. The dashboard provides insights into sales performance, profitability, customer segments, product categories, and the impact of discounts on business performance.
The objective of this project is to help stakeholders identify revenue-driving categories, profitable regions, customer purchasing patterns, and areas where profitability can be improved.

Business Problem :
Retail businesses generate large volumes of sales data. Without proper analysis, it becomes difficult to understand:
Which regions contribute the most revenue,
Which product categories generate maximum profit,
How customer segments influence sales,
Whether discounts are affecting profitability,
Which products perform best,

This dashboard addresses these challenges through interactive visualizations and KPIs.

Dataset: Sample Superstore

Features Used :
Order ID,
Region,
Category,
Sub-Category,
Segment,
Ship Mode,
Sales,
Profit,
Quantity,
Discount,
State,
Tools & Technologies,
Power BI Desktop,
Power Query,
DAX,
Data Modeling,
Data Visualization,
Key Performance Indicators (KPIs),
Total Sales,
Total Profit,
Profit Margin %,
Total Quantity Sold

DAX Measures :
Total Sales
Total Sales =
SUM(Superstore[Sales]),
Total Profit
Total Profit =
SUM(Superstore[Profit]),
Total Quantity
Total Quantity =
SUM(Superstore[Quantity]),
Profit Margin %
Profit Margin % =
DIVIDE([Total Profit],[Total Sales],0)

Dashboard Features :
Executive KPIs,
Total Sales,
Total Profit,
Profit Margin,
Quantity Sold,
Sales Analysis,
Revenue Contribution by Category,
Customer Segment Distribution,
Regional Profitability Analysis,
Product Analysis,
Top Performing Product Sub-Categories,
Profitability Analysis,
Discount Impact on Profitability,
Interactive Filters,
Region,
Category,
Segment,
Ship Mode

Key Insights : 
Technology generated the highest revenue contribution.
Consumer segment contributed the largest share of sales.
West region delivered the highest profitability.
Higher discounts negatively impacted profitability in several product categories.
A small number of product sub-categories generated a significant portion of revenue.

Dashboard Preview :
<img width="1208" height="681" alt="SUPERSTORE DASHBOARD IMAGE" src="https://github.com/user-attachments/assets/42f7b005-c2f5-4966-bf16-b5e80af1f8e6" />














