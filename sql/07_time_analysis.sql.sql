SELECT
    TO_CHAR(order_date,'Day') AS weekday,
    SUM(sales) AS total_sales
FROM orders
GROUP BY weekday
ORDER BY total_sales DESC;

SELECT
    TO_CHAR(order_date,'Month') AS month_name,
    SUM(sales) AS total_sales
FROM orders
GROUP BY month_name
ORDER BY total_sales DESC;

SELECT
    DATE_TRUNC('month',order_date) AS month,
    SUM(profit) AS total_profit
FROM orders
GROUP BY month
ORDER BY month;