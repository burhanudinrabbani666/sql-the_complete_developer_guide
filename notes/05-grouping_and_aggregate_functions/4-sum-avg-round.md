# SQL SUM(), AVG() & ROUND()

`SUM()`, `AVG()`, and `ROUND()` are aggregate functions used to **total**, **average**, and **format** numeric data. They are commonly combined in a single query for clean, readable results.

> **Key Note:** All three functions ignore `NULL` values automatically.

---

## SUM() — Total All Values

```sql
SELECT SUM(amount_billed) AS "Total Billed"
FROM bookings;
```

**How It Works:**

- Adds up every non-NULL value in the specified column.
- `AS "Total Billed"` assigns a quoted alias — useful when your label needs spaces or special characters.
- Returns a single number representing the grand total.

---

## AVG() — Calculate the Average

```sql
SELECT AVG(num_guests)
FROM bookings;
```

**How It Works:**

- Divides the sum of all non-NULL values by the count of non-NULL rows.
- Often returns a long decimal (e.g., `2.6666666...`), which is where `ROUND()` becomes useful.

---

## ROUND() — Control Decimal Places

`ROUND()` is a **scalar function** (not an aggregate) that formats a number to a set number of decimal places. It is most useful when wrapping `AVG()`.

```sql
-- Round the average number of guests to 2 decimal places
SELECT ROUND(AVG(num_guests), 2)
FROM bookings;

-- Round the average tip amount to 4 decimal places
SELECT ROUND(AVG(amount_tipped), 4)
FROM bookings;
```

**How It Works:**

- `ROUND(value, decimal_places)` takes two arguments:
  - **value** — the number to round (here, the result of `AVG()`).
  - **decimal_places** — how many digits to keep after the decimal point.
- SQL first calculates the inner `AVG()`, then passes that result to `ROUND()`.

> **Key Note:** `ROUND()` can wrap any expression, not just `AVG()`. For example, `ROUND(SUM(amount_billed), 2)` is also valid.

---

## Quick Comparison

| Function          | Purpose              | Ignores NULL? | Returns              |
| ----------------- | -------------------- | ------------- | -------------------- |
| `SUM(column)`     | Adds all values      | ✅ Yes        | Single total         |
| `AVG(column)`     | Averages all values  | ✅ Yes        | Often a long decimal |
| `ROUND(value, n)` | Trims decimal places | N/A           | Formatted number     |

---

## Complete Flow

1. SQL scans the target column and skips any `NULL` values.
2. `SUM()` totals the remaining values; `AVG()` divides that total by the non-NULL row count.
3. If wrapped in `ROUND()`, the raw result is trimmed to the specified number of decimal places before being returned.
4. Aliases (`AS`) label the output column for readability.

---

Next: [Filters & Joining Tables →](./5-filters-joining-tables.md)
