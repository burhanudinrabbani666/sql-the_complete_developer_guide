# Exists

```sql
SELECT EXISTS(
    SELECT first_name,
      last_name
    FROM customers
    WHERE email = 'manu@test.com'
  ) -- Returning boolean
```

Next: [subquery EXISTS](./10-subquery-exists.md)
