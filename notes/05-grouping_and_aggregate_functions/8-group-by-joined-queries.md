# GROUP BY joined queries

```sql
SELECT p.name,
  sum(b.num_guests),
  b.booking_date
FROM payment_methods as p
  INNER JOIN bookings as b ON p.id = b.payment_id
GROUP BY p.name,
  b.booking_date
ORDER BY b.booking_date ASC;
```

Next: [WHERE vs HAVING](./9-where-vs-having.md)
