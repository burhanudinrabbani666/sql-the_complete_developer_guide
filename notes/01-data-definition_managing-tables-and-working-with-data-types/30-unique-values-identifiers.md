# Unique values identifiers

The role & importance of unique ID

When storing data, each data entry should have at least one unique value (for identifyng the record)

- Unique ID

## How to set unique ID

- Chose & set IDs manually
- Genarte unique, randon strings
- generate auto increment integers

Insert UNIQUE type when create table

`postgresql`

```sql
 CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    salary INT
 )
```

---

`mariadb / mysql`

```sql
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    salary INT
);
```

Next: [Serial mysql vs postgresql](./31-serial-mysql-vs-postgresql.md)
