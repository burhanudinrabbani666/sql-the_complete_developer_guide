# Using inner join

```sql
SELECT u.id,
    u.first_name,
    u.last_name,
    a.street,
    a.house_number
FROM users AS u
    INNER JOIN address AS a ON u.address_id = a.id;
```

Next: [Multiple joins](./11-multiple-joins.md)
