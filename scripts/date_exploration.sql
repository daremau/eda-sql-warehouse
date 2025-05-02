--Find the date of the first and last orders in the database
SELECT 
MIN(order_date) first_order_date,
MAX(order_date) last_order_date,
DATEDIFF(month, MIN(order_date), MAX(order_date)) AS order_range_months
 FROM gold.fact_sales

--Find the oldest and youngest customers in the database
SELECT 
MIN(birth_date) oldest_birth_date,
DATEDIFF(year, MIN(birth_date), GETDATE()) AS oldest_age,
MAX(birth_date) youngest_birth_date,
DATEDIFF(year, MAX(birth_date), GETDATE()) AS youngest_date,
DATEDIFF(year, MIN(birth_date), MAX(birth_date)) AS age_range_years
 FROM gold.dim_customers