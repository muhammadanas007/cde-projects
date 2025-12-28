--find top 10 highest reveue generating products 

SELECT TOP 10   [Product Id],SUM([Sale Price]) AS Sales
from df_orders
GROUP BY [Product Id]
ORDER BY Sales DESC