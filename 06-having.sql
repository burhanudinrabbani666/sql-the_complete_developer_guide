-- Where is for Filtering Raw data
SELECT booking_date,
  count(booking_date)
FROM bookings
WHERE amount_billed > 30
GROUP BY booking_date;
-- Having is for filterig aggregate data
SELECT booking_date,
  count(booking_date)
FROM bookings
GROUP BY booking_date
HAVING sum(amount_billed) > 30;