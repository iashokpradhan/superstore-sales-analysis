SELECT category,
SUM(sales) total_sales
FROM orders
GROUP BY category
ORDER BY total_sales DESC;

SELECT sub_category,
SUM(sales) total_sales
FROM orders
GROUP BY sub_category
ORDER BY total_sales DESC;

SELECT region,
SUM(sales) total_sales
FROM orders
GROUP BY region;

SELECT state,
SUM(sales) total_sales
FROM orders
GROUP BY state
ORDER BY total_sales DESC;

SELECT city,
SUM(sales) total_sales
FROM orders
GROUP BY city
ORDER BY total_sales DESC;

SELECT segment,
SUM(sales) total_sales
FROM orders
GROUP BY segment;

SELECT ship_mode,
SUM(sales)
FROM orders
GROUP BY ship_mode;

SELECT
DATE_TRUNC('month',order_date) as month,
SUM(sales)
FROM orders
GROUP BY month
ORDER BY month;

SELECT
EXTRACT(YEAR FROM order_date) as year,
SUM(sales)
FROM orders
GROUP BY year
ORDER BY year;

SELECT
EXTRACT(QUARTER FROM order_date) quarter,
SUM(sales)
FROM orders
GROUP BY quarter;