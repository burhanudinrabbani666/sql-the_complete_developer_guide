-- INSERT INTO cities (name)
-- VALUES ('Munich'), ('Rome'), ('Tokyo'), ('Washington, D.C.');
DROP TABLE address;
CREATE TABLE address (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    house_number VARCHAR(50) NOT NULL,
    city_id INT NOT NULL
);
INSERT INTO address (street, house_number, city_id)
VALUES ('TestStreet', '8A', 3),
    ('Some street', '10', 1),
    ('TestStreet', '1', 3),
    ('My Street', '101', 2),
    ('Beerstreet', '91', 4),
    ('Beerstreet', '12', 4),
    ('Pizzastreet', '1', 5),
    ('Burgerstreet', '9', 2),
    ('Anotherstreet', '12', 1),
    ('Smallstreet', '11', 3);
-- INSERT INTO users (first_name, last_name, email, address_id)
-- VALUES ('Marina', 'Marks', 'marina@test.com', 2),
--     ('Hans', 'Mayer', 'hansm@test.com', 5),
--     ('Maria', 'Marionatti', 'maria@test.com', 7),
--     ('Michael', 'Smith', 'michael@test.com', 8);