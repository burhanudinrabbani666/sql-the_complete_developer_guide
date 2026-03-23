# Select column names expressions

- Using `AS` alias

```sql
SELECT
 date_created,
 customer_name,
 product_name,
 volume AS "totalSales"
FROM sales;
```

- you can also use calculation and build sql function

```sql
SELECT
 date_created,
 customer_name,
 product_name,
 volume / 1000
FROM sales;
```

Next: [Filtering where operators](./15-filtering-where-operators.md)
