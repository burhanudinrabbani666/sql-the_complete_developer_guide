# Foreign key constraints

```sql
CREATE TABLE users(
    address_id INT REFERENCES address (id) ON DELETE CASCADE
)
```

`REFERENCES`: Defines the related table + column
`ON DELETE` or `ON UPDATE`: Defines the action executed if a related row is deleted or updated

Common actions:

- `CASCADE`: Propagate delete/update to the child rows
- `RESTRICT`: Block delete/update if child rows exist (default in many databases)
- `NO ACTION`: Similar to `RESTRICT`, but can be deferred until end of transaction
- `SET NULL`: Set the foreign key column(s) to `NULL`
- `SET DEFAULT`: Set the foreign key column(s) to their default value

Inline vs table-level syntax:

```sql
CREATE TABLE orders (
  user_id INT,
  CONSTRAINT orders_user_id_fkey
    FOREIGN KEY (user_id)
    REFERENCES users (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);
```

Other notes:

- A foreign key can reference a primary key or a `UNIQUE` key
- Child columns must match the referenced columns in count and type compatibility
- Composite foreign keys are supported:

```sql
FOREIGN KEY (country_code, tax_id)
  REFERENCES tax_registry (country_code, tax_id)
```

- `ON DELETE SET NULL` requires the FK column to be nullable
- Most databases create an index on the referenced key, but not always on the FK column. Add an index on the child column(s) if you query by them or expect frequent deletes/updates on the parent.

Next: [Deep dive foreign keys](./22-deep-dive-foreign-keys.md)
