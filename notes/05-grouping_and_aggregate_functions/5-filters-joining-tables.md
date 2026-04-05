# SQL Filters & Joining Tables

Aggregate functions like `AVG()` and `MAX()` become much more powerful when combined with `WHERE` filters and `JOIN`s. This lets you narrow down _which rows_ are included before the aggregation runs.

---

## Filtering Before Aggregation with WHERE

```sql
SELECT ROUND(AVG(amount_tipped), 2)
FROM bookings
WHERE amount_billed > 20
  AND num_guests > 2;
```

**How It Works:**

- `WHERE` runs **before** any aggregation — only rows that pass all conditions are handed to `AVG()`.
- Here, only bookings where the bill exceeds 20 **and** the party has more than 2 guests are included in the average.
- Multiple conditions are chained with `AND` (both must be true) or `OR` (either must be true).

> **Key Note:** You cannot use aggregate functions (like `AVG()`, `SUM()`) inside a `WHERE` clause. For filtering on aggregated results, use `HAVING` instead (covered later).

---

## INNER JOIN — Combining Two Tables

```sql
SELECT MAX(b.num_guests) AS "Max Guests",
       MAX(t.num_seats)  AS "Max Seats"
FROM bookings AS b
  INNER JOIN tables AS t ON t.id = b.table_id;
```

**How It Works:**

- `FROM bookings AS b` gives the `bookings` table a short alias `b` for cleaner references.
- `INNER JOIN tables AS t ON t.id = b.table_id` links each booking row to its matching table row using the foreign key `table_id`.
- Only rows that have a **match in both tables** are included — unmatched rows are dropped.
- `MAX()` then runs across the joined result as if it were a single table.

> **Key Note:** Table aliases (`AS b`, `AS t`) are essential when joining — they prevent ambiguity when two tables share column names like `id`.

---

## Chaining Multiple JOINs with WHERE

```sql
SELECT MAX(b.num_guests) AS "Max Guests",
       MAX(t.num_seats)  AS "Max Seats"
FROM bookings AS b
  INNER JOIN tables AS t          ON t.id = b.table_id
  INNER JOIN payment_methods AS p ON p.id = b.payment_id
WHERE t.num_seats < 5
  AND p.name = 'Cash';
```

**How It Works:**

- A second `INNER JOIN` links `payment_methods` to `bookings` via `payment_id`.
- SQL builds one wide combined row per booking: booking data + table data + payment data.
- `WHERE` then filters that combined result to only small tables (fewer than 5 seats) paid with cash.
- Finally, `MAX()` aggregates the filtered rows.

> **Key Note:** Each additional `JOIN` narrows the dataset further. The order of JOINs doesn't change the result, but keeping them consistent and readable matters for maintainability.

---

## Quick Comparison

| Clause       | Runs When          | Purpose                             |
| ------------ | ------------------ | ----------------------------------- |
| `WHERE`      | Before aggregation | Filter individual rows              |
| `INNER JOIN` | Before aggregation | Merge rows from two tables          |
| `ON`         | At join time       | Define how two tables relate        |
| `AS` (table) | Throughout query   | Shorten table names for readability |

---

## Complete Flow

1. SQL starts with the `FROM` table and applies each `INNER JOIN` in sequence, building a combined row set.
2. `WHERE` filters that combined row set — rows that fail any condition are discarded.
3. Aggregate functions (`MAX`, `AVG`, etc.) run on the remaining filtered rows.
4. Column aliases (`AS`) label the final output columns.

---

Next: [GROUP BY Theory →](./6-group-by-theory.md)
