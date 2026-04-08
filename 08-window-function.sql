-- SELECT booking_date,
--   amount_tipped,
--   sum(amount_tipped) OVER() -- Window function
-- FROM bookings;
SELECT booking_date,
  amount_tipped,
  sum(amount_tipped) OVER(PARTITION BY booking_date)
FROM bookings