DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversation;
DROP TYPE Current_status;
CREATE TYPE Employment_status AS ENUM('self-employed', 'employed', 'unemployed');


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- For MySQL or mariaDB
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0),
    -- current_status ENUM('self-employed', 'employed', 'unemployed')
    current_status Employment_status
);


CREATE TABLE employers (
    id SERIAL PRIMARY KEY,
    --id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
    id SERIAL PRIMARY KEY,
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    users_id  INT NOT NULL,
    employers_id INT NOT NULL,
    message TEXT NOT NULL,
    data_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 