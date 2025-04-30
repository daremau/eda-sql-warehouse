--Generate a report that shows all key metrcis of the business

--Find the total sales
SELECT 'Total Sales' AS metric, SUM(sales_amount) AS value FROM gold.fact_sales
UNION ALL
--Find how many items are sold
SELECT 'Total Quantity' AS metric, SUM(quantity) AS value FROM gold.fact_sales
UNION ALL
--Find the average selling price
SELECT 'Average Price' AS metric, AVG(price) AS value FROM gold.fact_sales
UNION ALL
--Find  the total number of orders
SELECT 'Total Orders' AS metric, COUNT(DISTINCT order_number) AS value FROM gold.fact_sales
UNION ALL
--Find the total number of products
SELECT 'Total Products' AS metric, COUNT(DISTINCT product_key) AS value FROM gold.dim_products
UNION ALL
--Find the total number of customers
SELECT 'Total Customers' AS metric, COUNT(DISTINCT customer_key) AS value FROM gold.dim_customers
UNION ALL
--Find the total number of customers who have placed an order
SELECT 'Total Customers with Orders' AS metric, COUNT(DISTINCT customer_key) AS value FROM gold.fact_sales