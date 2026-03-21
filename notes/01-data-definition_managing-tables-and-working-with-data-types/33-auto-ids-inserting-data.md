# Auto ids inserting data

```sql
CREATE TYPE Employment_status AS ENUM('self-employed', 'employed', 'unemployed');


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- For MySQL or mariaDB
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0),
    -- current_status ENUM('self-employed', 'employed', 'unemployed')
    current_status Employment_status
);

```

Next: [Constraint summary](./34-constraints-summary.md)
