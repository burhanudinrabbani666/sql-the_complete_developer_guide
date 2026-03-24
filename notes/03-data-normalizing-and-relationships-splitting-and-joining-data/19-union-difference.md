# Union difference

False Friend: `UNION`

- UNION is a clouse the combines multipale result sets into one result set by oppending rows
- JOIN cluses merge multiple tables into one results set by oppending columns

```sql
SELECT *
FROM users
WHERE id < 3
UNION
SELECT *
FROM users
WHERE id > 4;
```

Next: [Foreign keys issues](./20-foreign-keys-issues.md)
