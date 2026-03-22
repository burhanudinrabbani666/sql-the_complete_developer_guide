# Inserting data example

```sql
-- INSERT INTO sales (customer_name, product_name, volume, is_recurring)
-- VALUES ('Burhanudin Rabbani', 'A Book', 12.99, TRUE);

INSERT INTO sales (date_fulfilled, customer_name, product_name, volume, is_recurring, is_disputed)
VALUES (
    NULL,
    'Learing Inc',
    'Cuorse Bundle',
    4889.62,
    FALSE,
    FALSE
), (
    '2022-04-10',
    'Big Oil Inc',
    'Trucks',
    40000.0,
    FALSE,
    TRUE
)
```

Next: [Inserting dummy data](./10-inserting-dummy-data.md)
