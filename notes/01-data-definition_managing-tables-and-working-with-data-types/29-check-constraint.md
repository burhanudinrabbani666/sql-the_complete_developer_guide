# Check Constraint

ALlowing or forbiding Null Values

```sql
CREATE TABLE users (
    full_name VARCHAR(255) NOT NULL,
    salary INT -- null is allowed because its not forbiden
)
```

Using check

```sql
CREATE TABLE users(
    full_name VARCHAR(200) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0)
);
```

Update fields

```sql
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);
```

Next: [Unique values identifiers](./30-unique-values-identifiers.md)
