SELECT id,
    first_name
FROM users
UNION
SELECT id,
    street
FROM address