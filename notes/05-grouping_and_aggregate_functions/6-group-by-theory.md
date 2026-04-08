# GROUP BY Theory

Aggregated vs Non-Aggregated

```sql
SELECT booking_date AS date, SUM(nr_guest) AS nr_guest
FROM bookings;

-- This is becoming error bacause the output is different
-- date is multiple value
-- nr_guest just one single result value
```

Next: [Group by practice](./7-group-by-practice.md)
