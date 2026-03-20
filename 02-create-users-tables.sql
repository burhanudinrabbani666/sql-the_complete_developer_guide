CREATE TYPE Current_status AS ENUM('employed', 'self-empployed', 'unemployed');

CREATE TABLE users (
    full_name       VARCHAR(100),
    yearly_salary   INT,
    current_status  Current_status
);