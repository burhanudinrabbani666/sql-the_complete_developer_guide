SELECT booking_date,
  (
    SELECT min(daily_sum)
    FROM(
        SELECT booking_date,
          sum(amount_billed) AS daily_sum
        FROM bookings
        GROUP BY booking_date
      )
  ) AS daily_sum
FROM bookings
GROUP BY booking_date
HAVING sum(amount_billed) = (
    SELECT min(daily_sum)
    FROM(
        SELECT booking_date,
          sum(amount_billed) AS daily_sum
        FROM bookings
        GROUP BY booking_date
      )
  )