SELECT COUNT(*)
FROM bookings;
-- NULL is ignored
SELECT COUNT(amount_tipped)
FROM bookings;
-- Only for unique with DISTINCT
SELECT COUNT(DISTINCT booking_date)
FROM bookings