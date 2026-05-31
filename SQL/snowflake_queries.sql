--Total Products
SELECT COUNT(DISTINCT product_id) AS total_products
FROM amazon_sales;

--Average Rating
SELECT AVG(TRY_CAST(rating AS FLOAT)) AS avg_rating
FROM amazon_sales;


--Top 10 Highest Rated Products
SELECT product_name, rating
FROM amazon_sales
ORDER BY rating DESC
LIMIT 10;

--Category-wise Product Count
SELECT category, COUNT(*) AS total_products
FROM amazon_sales
GROUP BY category
ORDER BY total_products DESC;

---Highest Discount Products
SELECT product_name, discount_percentage
FROM amazon_sales
ORDER BY discount_percentage DESC
LIMIT 10;