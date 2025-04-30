--Explore all countries customers come from
SELECT DISTINCT country FROM gold.dim_customers

--Explore all categories (major divisions) of productsS
SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products
ORDER BY 1, 2, 3