# Working with weekdays

```sql
SELECT last_checkin::TIMESTAMP::DATE,
  last_checkin::TIMESTAMP::TIME,
  last_checkin as original
FROM memberships
```

Next: [calculating INTERVALS](./6-calculating-intervals.md)
