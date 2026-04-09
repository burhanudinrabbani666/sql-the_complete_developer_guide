SELECT SUM(amount_billed) AS "SummaryBilled"
FROM bookings;
SELECT AVG(num_guests)
FROM bookings;
-- Rounding the number with decimal number
SELECT ROUND(AVG(num_guests), 2)
FROM bookings;
SELECT ROUND(AVG(amount_tipped), 4)
FROM bookings