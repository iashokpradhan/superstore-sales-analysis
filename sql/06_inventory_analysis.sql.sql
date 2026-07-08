SELECT
    product_name,
    SUM(quantity) AS total_quantity
FROM orders
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 20;

SELECT
    category,
    SUM(quantity) AS total_quantity
FROM orders
GROUP BY category
ORDER BY total_quantity DESC;

SELECT
    sub_category,
    ROUND(AVG(discount),2) AS avg_discount
FROM orders
GROUP BY sub_category
ORDER BY avg_discount DESC;

SELECT
    product_name,
    ROUND(AVG(profit),2) AS avg_profit
FROM orders
GROUP BY product_name
ORDER BY avg_profit DESC
LIMIT 20;