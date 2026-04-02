INSERT INTO cities (name)
VALUES ('Berlin'),
    ('New York'),
    ('London');
INSERT INTO address (street, house_number, city_id)
VALUES ('TestStreet', '8A', 3),
    ('Some street', '10', 1),
    ('TestStreet', '1', 3),
    ('My Street', '101', 2);
INSERT INTO users (first_name, last_name, email, address_id)
VALUES ('Max', 'Schwarz', 'max@test.com', 2),
    ('Manuel', 'Lorenz', 'manu@test.com', 4),
    ('Julie', 'Barnes', 'julie@test.com', 3);