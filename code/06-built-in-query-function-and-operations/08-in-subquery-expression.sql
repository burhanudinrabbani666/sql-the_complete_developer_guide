-- SELECT email FROM customers;
-- SELECT email
-- FROM customers
--   INNER JOIN orders as o ON customers.id = o.customer_id
-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max'
--   OR first_name = 'Manu'
-- SELECT id,
--   first_name
-- FROM customers
-- WHERE first_name  IN('Max', 'Manu')
SELECT email
FROM customers
WHERE id IN(
    SELECT customer_id
    FROM orders
  )