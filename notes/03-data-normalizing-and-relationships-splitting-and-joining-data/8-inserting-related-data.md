# Inserting related data

```sql
INSERT INTO cities(name) VALUES('Berlin'),('New York'),('London');
-- -----------
INSERT INTO address (street, house_number, city_id)
VALUES('TestStreet', '8A', 3),
    ('Some Street', '10', 1),
    ('TestStreet', '1', 3),
    ('My street', '101', 2);
-- -----------

INSERT INTO users(first_name, last_name, email, address_id)
VALUES ('Burhanudin', 'Rabbani', 'bani@test.io', 2),
    ('Manual', 'Lorenz', 'manual@test.io', 4),
    ('Julie', 'Bernes', 'Julie@test.io', 3);
```

Next: [Inner join introduction](./9-inner-join-introduction.md)
