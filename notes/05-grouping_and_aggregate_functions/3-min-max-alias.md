# SQL MIN(), MAX() & Aliases

`MIN()` and `MAX()` are **aggregate functions** that return the smallest or largest value in a column. They work on numbers, dates, and even strings.

---

## Important Limitation

```sql
-- SELECT MAX(*) FROM tables; -- ERROR: wildcard (*) is not allowed with MIN/MAX
```

> **Key Note:** Unlike `COUNT(*)`, you **cannot** use `*` with `MIN()` or `MAX()`. You must always specify a column name.

---

## Basic Usage — Numbers

```sql
-- Largest value in the num_seats column
SELECT MAX(num_seats)
FROM tables;

-- Smallest value in the num_seats column
SELECT MIN(num_seats)
FROM tables;
```

**How It Works:**

- SQL scans every non-NULL value in the column and returns the highest (`MAX`) or lowest (`MIN`) one.
- `NULL` values are **always ignored** by both functions.

---

## Using Aliases with AS

```sql
SELECT MAX(amount_billed) AS max_billed,
       MAX(amount_tipped) AS max_tipped
FROM bookings;
```

**How It Works:**

- `AS max_billed` renames the output column from the ugly default (`MAX(amount_billed)`) to a clean, readable label.
- You can run multiple `MIN()`/`MAX()` calls in a single query — each gets its own alias.
- Aliases only affect the **output label**; they do not change the underlying data.

> **Key Benefit:** Aliases make results far easier to read, especially when sharing queries or building reports.

---

## MIN() / MAX() on Strings

```sql
SELECT MIN(category),
       MAX(category)
FROM tables;
```

**How It Works:**

- On text columns, `MIN()` returns the value that comes **first alphabetically** (e.g., `"Appetizer"`).
- `MAX()` returns the value that comes **last alphabetically** (e.g., `"Soup"`).
- Ordering follows standard alphabetical (lexicographic) rules — uppercase letters sort before lowercase in most databases.

> **Key Note:** This is useful for quickly checking the alphabetical range of categories or names in your data.

---

## Quick Comparison

| Function | On Numbers     | On Strings           | Allows `*`? | Ignores NULL? |
| -------- | -------------- | -------------------- | ----------- | ------------- |
| `MAX()`  | Largest value  | Last alphabetically  | ❌ No       | ✅ Yes        |
| `MIN()`  | Smallest value | First alphabetically | ❌ No       | ✅ Yes        |

---

## Complete Flow

1. SQL scans the specified column in the target table.
2. `NULL` values are skipped entirely.
3. The highest or lowest value is returned — using numeric order for numbers, alphabetical order for strings, and chronological order for dates.
4. If an `AS` alias is provided, the output column is labeled accordingly.

---

Next: [SUM, AVG & ROUND →](./4-sum-avg-round.md)
