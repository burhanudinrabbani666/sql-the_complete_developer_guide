# explain queries planning

```sql
ANALYZE
SELECT *
FROM users
WHERE salary > 12000;
```

```json
[
  {
    "id": "1",
    "select_type": "SIMPLE",
    "table": "users",
    "type": "ALL",
    "possible_keys": null,
    "key": null,
    "key_len": null,
    "ref": null,
    "rows": "6",
    "r_rows": "6.00",
    "filtered": 100,
    "r_filtered": 50,
    "Extra": "Using where"
  }
]
```

Next: [single column INDEXES](./06-single-column-indexes.md)
