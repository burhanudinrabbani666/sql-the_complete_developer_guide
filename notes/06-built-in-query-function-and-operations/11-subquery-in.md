# subquery IN

```sql
SELECT email
FROM customers
WHERE id IN(
    SELECT customer_id
    FROM orders
  )
```

Next: [Conditional expressions](./12-conditional-expressions.md)
