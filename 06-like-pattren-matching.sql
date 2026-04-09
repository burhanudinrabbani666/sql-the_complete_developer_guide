-- SELECT first_name LIKE '__o%',
--   first_name
-- FROM memberships
SELECT first_name
FROM memberships
WHERE first_name ILIKE 'ma%'