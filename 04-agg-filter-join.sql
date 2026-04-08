/*
 -- Applying Filter
 -- SELECT ROUND(AVG(amount_tipped), 2)
 -- FROM bookings
 -- WHERE amount_billed > 20
 --     AND num_guests > 2;
 SELECT MAX(b.num_guests) AS maximal_number_guest,
 MAX(t.num_seats) AS maximal_number_seats
 FROM bookings AS b
 INNER JOIN tables AS t ON t.id = b.table_id;
 */
-- Using INNER JOIN and WHERE
SELECT MAX(b.num_guests) AS max_num_guest,
    MAX(t.num_seats) AS max_num_seats
FROM bookings AS b
    INNER JOIN tables AS t ON t.id = b.table_id
    INNER JOIN payment_methods AS p ON p.id = b.payment_id
WHERE t.num_seats < 5
    AND p.name = 'Cash';