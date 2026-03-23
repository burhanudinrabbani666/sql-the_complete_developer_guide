# Filtering in action

```sql
SELECT *
FROM sales
WHERE volume > 1000;
--------
SELECT *
FROM sales
WHERE is_recurring IS TRUE;
```

Next: [AND OR comparisons](./17-and-or-comparisons.md)
