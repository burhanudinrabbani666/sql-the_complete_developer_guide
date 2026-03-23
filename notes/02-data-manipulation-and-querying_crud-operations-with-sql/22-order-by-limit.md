# Order by Limit

## Sorting / Ordering Results

Sort the selected data in ascending order

```sql
SELECT *
FROM <table>
ORDER BY <column name>
```

Sort the selected dauta in desceding order (you could specify ASC but that would be ther default)

```sql
SELECT *
FROM <table name>
ORDER BY <column name> DESC
```

Select only first X number of rows (can be combined with sorting)

```sql
SELECT *
FROM <table name>
LIMIT <number X>
```

Select X number of rows after skipping Y number of rows

```sql
SELECT *
FROM <table name>
LIMIT <number X>
OFFSET <offset number Y>
```

Drop any duplicates inthe result set

```sql
SELECT DISTINCT * FROM <table name>
```

Next: [](./23-ordering-limiting-action.md)
