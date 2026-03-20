# Fixed floating point numbers

```sql
CREATE TABLE employers (
    company_name        VARCHAR(250),
    company_address     VARCHAR(300),
    -- yearly_revenue   FLOAT
    yearly_revenue      NUMERIC(5,2)
)
```
Next: [Boolean value types](./19-boolean-value-types.md)