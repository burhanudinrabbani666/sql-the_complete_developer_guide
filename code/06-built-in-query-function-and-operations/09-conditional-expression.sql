/*
 SELECT amount_billed,
 CASE
 WHEN amount_billed > 15
 AND amount_billed <= 30 THEN 'Normal Day'
 WHEN amount_billed > 30 THEN 'Good Day'
 ELSE 'Bad Day'
 END
 FROM orders;
 */
SELECT weekday_number,
  CASE
    WHEN weekday_number = 1 THEN 'Monday'
    WHEN weekday_number = 2 THEN 'Tuesday'
    WHEN weekday_number = 3 THEN 'Wednesday'
    WHEN weekday_number = 4 THEN 'Thursday'
    WHEN weekday_number = 5 THEN 'Friday'
    WHEN weekday_number = 6 THEN 'Saturday'
    ELSE 'Sunday'
  END
FROM (
    SELECT EXTRACT(
        DOW
        FROM last_checkin
      ) AS weekday_number
    FROM memberships
  ) AS Weekday_numbers