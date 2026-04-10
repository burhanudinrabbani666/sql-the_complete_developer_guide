-- SELECT first_name,
--   last_name
-- FROM customers
-- WHERE email = 'max@test.com' 
-- SELECT EXISTS(
--     SELECT first_name,
--       last_name
--     FROM customers
--     WHERE email = 'manu@test.com'
--   ) -- Returning boolean
SELECT id
FROM orders AS o
WHERE EXISTS(
    SELECT email
    FROM customers AS c
    WHERE o.customer_id = c.id
      AND c.email = 'max@test.com'
  );
-- Using Inner join
SELECT *
FROM orders AS o
  INNER JOIN customers AS c ON c.id = o.customer_id