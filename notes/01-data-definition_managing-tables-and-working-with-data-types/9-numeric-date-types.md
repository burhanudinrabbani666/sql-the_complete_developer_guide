# Numeric, date & more

| Text           | Numeric            | Date                | Other   |
| -------------- | ------------------ | ------------------- | ------- |
| CHAR(x)        | INT, SMALLINT, ... | DATE                | BOOLEAN |
| VARCHAR(X)     | DECIMAL, NUMERIC   | DATETIME, TIMESTAMP | JSON    |
| TEXT, LONGTEXT | FLOAT, REAL        |                     |         |
| ENUM           |                    |                     |         |

## Description

- INT: number (between min and max boundries) are allowed. not decimal number.
- DECIMAL, NUMERIC: Decimal numbers with a fixed precison(exact values)
- FLOAT, REAL: Decimal numbers with floating points (appromixed values)

---

- DATE: A value like 1986-10-20 (i.e. no hours or minutes)
- DATE, TIMESTAMP: A valu like 1986-10-20 14:39:05 (i.e. with hour, minutes etc)

---

- BOOLEAN: true or false
- JSON: JSON-formated text data

Next: [Overview numeric value types](./10-overview-numeric-value-types.md)
