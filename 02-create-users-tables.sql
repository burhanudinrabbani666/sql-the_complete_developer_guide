CREATE TYPE Employe_status AS ENUM ('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
    full_name       VARCHAR(100),
    yearly_salary   INT,
    current_status Employe_status
);