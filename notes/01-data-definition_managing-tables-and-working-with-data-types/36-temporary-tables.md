# Temporary tables

## Temporary tables

```sql
CREATE TEMPORARY TABLE
```

- Tabels thet are only styored temporary (in memory of the database server)
- Useful for non-permanets data (e.g. intermediate results)

## Tacles based onother Tables / Data

```sql
CREATE TABLE user () AS <query>
```

- Create a atble and pre-populates it with a data from query result set
- Useful if a subset of data dfrom another table should be stored in a separate table

Next: [Generated columns](./37-generated-columns.md)
