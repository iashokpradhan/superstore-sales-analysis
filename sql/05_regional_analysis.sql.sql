SELECT
    country,
    SUM(sales) AS total_sales
FROM orders
GROUP BY country
ORDER BY total_sales DESC;

SELECT
    region,
    SUM(profit) AS total_profit
FROM orders
GROUP BY region
ORDER BY total_profit DESC;

SELECT
    state,
    SUM(profit) AS total_profit
FROM orders
GROUP BY state
ORDER BY total_profit DESC;

SELECT
    state,
    ROUND(AVG(sales),2) AS avg_sales
FROM orders
GROUP BY state
ORDER BY avg_sales DESC;