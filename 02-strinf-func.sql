-- SELECT concat(first_name, ' ', last_name) as name
-- FROM memberships;
-- Postgesql only
SELECT first_name || ' ' || last_name AS name
FROM memberships
SELECT concat('$ ', price)
FROM memberships;
SELECT upper()
FROM memberships