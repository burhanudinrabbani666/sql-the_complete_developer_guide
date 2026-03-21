# Generated columns

| first_name | last_name | full_name          |
| ---------- | --------- | ------------------ |
| Burhanudin | Rabbani   | Burhanudin Rabbani |

- **Could be created as a "Generated Column"**
- Value is derived automatically
- Data doesnt have to be (and cant be) inserted manually

> Its not recomended ⚠️

```sql
 CREATE TABLE users (
     id INT PRIMARY KEY AUTO_INCREMENT, -- For MySQL or mariaDB
     first_name VARCHAR(200) NOT NULL,
     last_name VARCHAR(200) NOT NULL,
     full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
     yearly_salary INT CHECK (yearly_salary > 0),
     current_status ENUM('self-employed', 'employed', 'unemployed')
 );

INSERT INTO users(first_name, last_name, current_status)
VALUES ('Burhanudin', 'Rabbani', 'unemployed')
```

Next: [Module summary](./38-module-summary.md)
