--find top 10 highest reveue generating products 

SELECT TOP 10 [Product Id],SUM([Sale Price]) AS Sales
from df_orders
GROUP BY [Product Id]
ORDER BY Sales DESC


--find top 5 highest selling products in each region
WITH CTE AS(
SELECT [Region], [Product Id],SUM([Sale Price]) AS Sales
FROM df_orders
GROUP BY [Region],[Product Id])
SELECT * FROM (
	SELECT *
	, ROW_NUMBER() OVER(PARTITION BY Region ORDER BY Sales DESC) AS RN
	FROM CTE) A
	WHERE RN <= 5


--find month over month growth comparison for 2022 and 2023 sales eg : jan 2022 vs jan 2023
WITH CTE AS(
SELECT YEAR([order date]) AS order_year, MONTH([order date]) AS order_month, SUM([Sale Price]) AS sales from df_orders
GROUP BY YEAR([order date]), MONTH([order date])
)
SELECT order_month
, SUM(CASE WHEN order_year = 2022 THEN sales ELSE 0 END) AS sales_2022
, SUM(CASE WHEN order_year = 2023 THEN sales ELSE 0 END) AS sales_2023
FROM CTE 
	GROUP BY order_month
	ORDER BY order_month


--for each category which month had highest sales 
WITH CTE AS (
SELECT [Category], FORMAT([Order Date], 'yyyyMM') AS order_year_month
, SUM([Sale Price]) AS sales FROM df_orders
GROUP BY [Category], FORMAT([Order Date], 'yyyyMM')
)
SELECT * FROM (
SELECT *,
ROW_NUMBER() OVER (PARTITION BY [Category] ORDER BY SALES DESC) AS rn
FROM CTE
) a
WHERE rn = 1


--which sub category had highest growth by profit in 2023 compare to 2022
WITH CTE AS(
SELECT [Sub Category],YEAR([order date]) AS order_year, SUM([Sale Price]) AS sales from df_orders
GROUP BY [Sub Category],YEAR([order date])
),
CTE2 AS(
SELECT [Sub Category]
, SUM(CASE WHEN order_year = 2022 THEN sales ELSE 0 END) AS sales_2022
, SUM(CASE WHEN order_year = 2023 THEN sales ELSE 0 END) AS sales_2023
FROM CTE 
	GROUP BY [Sub Category]
)
SELECT TOP 1 *
,(sales_2023 - sales_2022)
FROM CTE2
ORDER BY (sales_2023 - sales_2022) DESC