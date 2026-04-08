-- SELECT booking_date,
--   amount_tipped,
--   sum(amount_tipped) OVER() -- Window function
-- FROM bookings;
-- SELECT booking_date,
--   amount_tipped,
--   sum(amount_tipped) OVER(PARTITION BY booking_date)
-- FROM bookings;
-- SELECT booking_date,
--   amount_tipped,
--   sum(amount_tipped) OVER(
--     PARTITION BY booking_date
--     ORDER BY amount_billed
--   ) AS daily_tipped
-- FROM bookings;
SELECT booking_date,
  amount_tipped,
  RANK() OVER(
    PARTITION BY booking_date
    ORDER BY amount_tipped DESC
  ) AS daily_tipped
FROM bookings;