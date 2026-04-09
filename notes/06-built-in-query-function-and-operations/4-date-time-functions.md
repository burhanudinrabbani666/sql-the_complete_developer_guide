# DATE TIME functions

Docs: https://www.postgresql.org/docs/18/functions-datetime.html

```sql
SELECT EXTRACT(
    DAY
    FROM last_checkin
  ),
  last_checkin
FROM memberships;
```

Next: [working with weekdays](./5-working-with-weekdays.md)
