SELECT booking_date AS date,
  sum(num_guests)
FROM bookings
GROUP BY booking_date
ORDER BY sum(num_guests) DESC;
-- SELECT DISTINCT booking_date AS date -- sum(num_guests)
-- FROM bookings
-- GROUP BY booking_date