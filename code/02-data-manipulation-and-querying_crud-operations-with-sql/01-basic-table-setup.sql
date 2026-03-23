-- CREATE DATABASE sales_example;

CREATE TABLE sales (
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL or MariaDB
    id SERIAL PRIMARY KEY, -- PostgreSql
    date_created DATE DEFAULT CURRENT_DATE,
    data_fulfilled DATE,
    customer_name VARCHAR(300) NOT NULL,
    product_name VARCHAR(300) NOT NULL,
    volemu NUMERIC(10,3) NOT NULL CHECK (volemu >= 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
)