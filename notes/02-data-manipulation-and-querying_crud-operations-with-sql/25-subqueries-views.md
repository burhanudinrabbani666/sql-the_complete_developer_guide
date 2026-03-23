# Subqueries views

```sql
SELECT customer_name,
    product_name
FROM(
        SELECT *
        FROM sales
        WHERE volume > 1000
    ) AS base_result;
```

Storing in views

```sql
CREATE VIEW base_result AS
SELECT *
FROM sales
WHERE volume > 1000;
-- ------------
SELECT customer_name,
    product_name
FROM base_result;

```

Next: [Module summary](./26-module-summary.md)
