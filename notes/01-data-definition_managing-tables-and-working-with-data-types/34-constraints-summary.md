# Constraints summary

Constraint restrict which values can actually be inserted into a column, example:

```sql
NOT NULL        -- A value must be provided
UNIQUE          -- No duplicate values allowed
PRIMARY KEY     -- In PostgreSQL
CHECK           -- Value must pass a spesific check
FOREIGN KEY     -- Value must exist in another table
```

## Column constraints

```sql
salary INT CHECK (salary > 0) -- Add in same line
```

## Table constraints

```sql
salary INT
CHECK (check > 0) -- Add in last field
```

Next: [Text encoding collation](./35-text-encoding-collation.md)
