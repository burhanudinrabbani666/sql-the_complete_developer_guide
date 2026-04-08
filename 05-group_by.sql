-- SELECT booking_date AS date,
--   sum(num_guests)
-- FROM bookings
-- GROUP BY booking_date
-- ORDER BY sum(num_guests) DESC;
-- SELECT DISTINCT booking_date AS date -- sum(num_guests)
-- FROM bookings
-- GROUP BY booking_date;
-- SELECT name,
--   sum(b.num_guests)
-- FROM payment_methods as p
--   INNER JOIN bookings as b ON p.id = b.payment_id
-- GROUP BY p.name;
SELECT p.name,
  sum(b.num_guests),
  b.booking_date
FROM payment_methods as p
  INNER JOIN bookings as b ON p.id = b.payment_id
GROUP BY p.name,
  b.booking_date
ORDER BY b.booking_date ASC;