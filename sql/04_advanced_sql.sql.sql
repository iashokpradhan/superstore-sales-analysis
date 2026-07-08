WITH ranked AS (
SELECT
category,
product_name,
SUM(sales) sales,
ROW_NUMBER() OVER(
PARTITION BY category
ORDER BY SUM(sales) DESC
) rn
FROM orders
GROUP BY category,product_name
)

SELECT *
FROM ranked
WHERE rn<=10;

SELECT
month,
total_sales,
SUM(total_sales)
OVER(ORDER BY month) running_total
FROM(
SELECT
DATE_TRUNC('month',order_date) month,
SUM(sales) total_sales
FROM orders
GROUP BY month
)t;

SELECT
category,
ROUND(SUM(profit)/SUM(sales)*100,2)
FROM orders
GROUP BY category;

SELECT
category,
ROUND(
SUM(sales)*100/
(SELECT SUM(sales) FROM orders),
2
)
FROM orders
GROUP BY category;