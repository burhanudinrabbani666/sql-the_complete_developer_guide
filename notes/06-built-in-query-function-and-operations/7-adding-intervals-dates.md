# adding intervals dates

```sql
SELECT (membership_start + INTERVAL '7 YEARS')::TIMESTAMP::DATE,
  membership_start
FROM memberships
```

Next: [like pattern matching](./8-like-pattern-matching.md)
