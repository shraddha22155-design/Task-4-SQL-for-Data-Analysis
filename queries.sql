
-- 1. Top 10 Products by Sales
SELECT Product, SUM(Sales) AS total_sales
FROM ecommerce
GROUP BY Product
ORDER BY total_sales DESC
LIMIT 10;

-- 2. Top 5 Customers by Profit
SELECT Customer_Id, SUM(Profit) AS total_profit
FROM ecommerce
GROUP BY Customer_Id
ORDER BY total_profit DESC
LIMIT 5;

-- 3. Monthly Revenue
SELECT strftime('%Y-%m', Order_Date) AS month, SUM(Sales) AS total_revenue
FROM ecommerce
GROUP BY month
ORDER BY month;

-- 4. Customers with more than average spend (Subquery)
SELECT Customer_Id, SUM(Sales) AS total_spent
FROM ecommerce
GROUP BY Customer_Id
HAVING total_spent > (
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(Sales) AS customer_total
        FROM ecommerce
        GROUP BY Customer_Id
    )
);

-- 5. Create a View: High Value Customers
CREATE VIEW high_value_customers AS
SELECT Customer_Id, SUM(Sales) AS total_spent
FROM ecommerce
GROUP BY Customer_Id
HAVING total_spent > 5000;
