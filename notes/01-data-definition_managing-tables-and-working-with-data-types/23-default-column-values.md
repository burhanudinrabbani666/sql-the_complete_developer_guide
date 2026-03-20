# Default column values

Adding Default value. Normally for date

```sql
CREATE TABLE "conversation" (
    user_name VARCHAR(200),
    employer_name VARCHAR(300),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

Next: [Dropping tables default values](./24-dropping-tables-default-values.md)
