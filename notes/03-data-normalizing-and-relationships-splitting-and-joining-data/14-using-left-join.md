# Using left join

```sql
SELECT *
FROM address AS a
    LEFT JOIN users AS u ON a.id = u.address_id
    LEFT JOIN cities AS c ON c.id = a.city_id;
```

Next: [Multiple left joins](./15-multiple-left-joins.md)
