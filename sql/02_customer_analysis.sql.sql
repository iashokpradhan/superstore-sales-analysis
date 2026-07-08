SELECT
customer_name,
SUM(sales) total_sales
FROM orders
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 20;

SELECT
customer_name,
SUM(profit) total_profit
FROM orders
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 20;

SELECT
segment,
COUNT(*)
FROM orders
GROUP BY segment;

SELECT
region,
COUNT(DISTINCT customer_id)
FROM orders
GROUP BY region;

SELECT
customer_name,
AVG(sales)
FROM orders
GROUP BY customer_name
ORDER BY AVG(sales) DESC
LIMIT 20;

SELECT
customer_name,
COUNT(DISTINCT order_id)
FROM orders
GROUP BY customer_name
ORDER BY COUNT(*) DESC;