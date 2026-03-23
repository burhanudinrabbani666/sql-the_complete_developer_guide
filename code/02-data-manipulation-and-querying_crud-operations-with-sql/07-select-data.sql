-- SELECT * FROM sales; -- basic
SELECT 
 date_created, 
 customer_name,
 product_name, 
 volume / 1000
FROM sales;