# String Functions — SELECT

Functions for combining, formatting, and transforming text values when querying data.

---

## The Three Functions at a Glance

| Function                 | Purpose                                 | Example Output      |
| ------------------------ | --------------------------------------- | ------------------- |
| `\|\|` (concat operator) | Joins strings together                  | `"John Doe"`        |
| `CONCAT()`               | Joins strings together (cross-database) | `"$ 29.99"`         |
| `UPPER()`                | Converts text to ALL CAPS               | `"john"` → `"JOHN"` |

---

## `||` — String Concatenation Operator

Joins two or more strings into one. The `' '` in the middle adds a space between values.

> ⚠️ **PostgreSQL only.** Use `CONCAT()` instead if your project needs to support multiple databases.

```sql
-- Combines first_name + space + last_name into a single "name" column
SELECT first_name || ' ' || last_name AS name
FROM memberships;
-- "John" || " " || "Doe" → "John Doe"
```

> **Key point:** You can chain `||` as many times as needed to build up a string from multiple columns or literal values.

---

## `CONCAT()` — Concatenation Function

Does the same job as `||` but works across most SQL databases (MySQL, PostgreSQL, SQL Server).

```sql
-- Prepends a dollar sign and space before the price value
SELECT CONCAT('$ ', price)
FROM memberships;
-- CONCAT("$ ", 29.99) → "$ 29.99"
```

> **Key point:** `CONCAT()` is the safer, more portable choice when working across different databases. Prefer it over `||` unless you are certain your codebase is PostgreSQL-only.

---

## `UPPER()` — Uppercase Conversion

Converts all characters in a string to uppercase. Useful for display formatting or case-insensitive comparisons.

```sql
-- Returns the first_name value in ALL CAPS
SELECT UPPER(first_name)
FROM memberships;
-- "john" → "JOHN"
```

> **Key point:** The original data in the database is not changed — `UPPER()` only affects how the value is returned in the query result.

---

## `||` vs `CONCAT()` — Which to Use?

```
PostgreSQL project only   →  either works, || is more concise
Multi-database project    →  always use CONCAT()
Mixing columns + text     →  both handle it the same way

Example (identical results):
  first_name || ' ' || last_name
  CONCAT(first_name, ' ', last_name)
  → "John Doe"
```

---

## Combining Functions Together

You can nest these functions to format output in one query:

```sql
-- Full name in uppercase, with a formatted price label
SELECT
  UPPER(first_name || ' ' || last_name) AS name,  -- "JOHN DOE"
  CONCAT('$ ', price)                              -- "$ 29.99"
FROM memberships;
```

---

Next: [String Functions — INSERT](./3-string-functions-insert.md)
