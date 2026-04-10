INSERT INTO customers(first_name, last_name, email)
VALUES('Marry', 'White', 'marry@test.com');
-- Error
INSERT INTO orders(amount_billed, customer_id)
VALUES (103.12);