SELECT
product_name,
SUM(sales)
FROM orders
GROUP BY product_name
ORDER BY SUM(sales) DESC
LIMIT 20;

SELECT
product_name,
SUM(profit)
FROM orders
GROUP BY product_name
ORDER BY SUM(profit)
LIMIT 20;

SELECT
category,
SUM(profit)
FROM orders
GROUP BY category;

SELECT
sub_category,
SUM(profit)
FROM orders
GROUP BY sub_category;

SELECT
category,
AVG(discount)
FROM orders
GROUP BY category;