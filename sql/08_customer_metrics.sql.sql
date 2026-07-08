SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY customer_name
ORDER BY total_orders DESC;

SELECT
    order_id,
    ROUND(SUM(sales),2) AS order_value
FROM orders
GROUP BY order_id
ORDER BY order_value DESC;

SELECT
    customer_name,
    COUNT(order_id) AS purchases
FROM orders
GROUP BY customer_name
ORDER BY purchases DESC;