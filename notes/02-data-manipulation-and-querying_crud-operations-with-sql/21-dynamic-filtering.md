# Dynamic filtering

```sql
SELECT *
FROM sales
WHERE EXTRACT (
        DAY
        FROM date_fulfilled - date_created
    ) <= 5;
```

Next: [Order by limit](./22-order-by-limit.md)
