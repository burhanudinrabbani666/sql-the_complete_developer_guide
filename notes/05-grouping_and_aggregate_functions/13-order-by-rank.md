# SQL Window Functions — ORDER BY & RANK()

Building on `OVER()` and `PARTITION BY`, adding `ORDER BY` inside a window function changes **how the calculation accumulates** across rows. `RANK()` is a specialized window function that assigns a position to each row within its partition.

---

## ORDER BY Inside a Window — Running Totals

```sql
SELECT booking_date,
       amount_tipped,
       SUM(amount_tipped) OVER(
         PARTITION BY booking_date
         ORDER BY amount_billed
       ) AS daily_tipped
FROM bookings;
```

**How It Works:**

- `PARTITION BY booking_date` creates a separate window for each date — same as before.
- Adding `ORDER BY amount_billed` inside `OVER()` changes the window from a **fixed total** to a **running total**.
- For each row, `SUM()` only includes rows within the same partition that have an `amount_billed` value less than or equal to the current row's — it accumulates as it goes.
- The result increases row by row as `amount_billed` increases within each date partition.

**Example Output:**

| booking_date | amount_tipped | daily_tipped |
| ------------ | ------------- | ------------ |
| 2024-01-01   | 3.00          | 3.00         |
| 2024-01-01   | 5.00          | 8.00         |
| 2024-01-01   | 8.00          | 16.00        |
| 2024-01-02   | 12.00         | 12.00        |

> **Key Note:** Without `ORDER BY` inside `OVER()`, `SUM()` sees the entire partition at once (a fixed total). With `ORDER BY`, it sees only the rows up to and including the current one (a running total). This is a subtle but critical difference.

---

## RANK() — Assign a Position to Each Row

```sql
SELECT booking_date,
       amount_tipped,
       RANK() OVER(
         PARTITION BY booking_date
         ORDER BY amount_tipped DESC
       ) AS tip_rank
FROM bookings;
```

**How It Works:**

- `RANK()` assigns a position number (1, 2, 3...) to each row within its partition.
- `ORDER BY amount_tipped DESC` means rank 1 = the highest tip for that date.
- If two rows have the **same** `amount_tipped`, they receive the **same rank**, and the next rank is skipped (e.g., 1, 2, 2, 4 — rank 3 is skipped).
- `PARTITION BY booking_date` resets the ranking to 1 for each new date.

**Example Output:**

| booking_date | amount_tipped | tip_rank |
| ------------ | ------------- | -------- |
| 2024-01-01   | 10.00         | 1        |
| 2024-01-01   | 7.00          | 2        |
| 2024-01-01   | 7.00          | 2        |
| 2024-01-01   | 4.00          | 4        |
| 2024-01-02   | 15.00         | 1        |
| 2024-01-02   | 6.00          | 2        |

> **Key Note:** If you want consecutive ranks with no gaps on ties, use `DENSE_RANK()` instead (e.g., 1, 2, 2, 3). If you want each row to get a unique position regardless of ties, use `ROW_NUMBER()`.

---

## The Three Ranking Functions

| Function       | Ties get same rank? | Gaps after ties? | Example    |
| -------------- | ------------------- | ---------------- | ---------- |
| `RANK()`       | ✅ Yes              | ✅ Yes           | 1, 2, 2, 4 |
| `DENSE_RANK()` | ✅ Yes              | ❌ No            | 1, 2, 2, 3 |
| `ROW_NUMBER()` | ❌ No               | ❌ No            | 1, 2, 3, 4 |

---

## What ORDER BY Does Inside vs Outside OVER()

| Position                               | Effect                                                             |
| -------------------------------------- | ------------------------------------------------------------------ |
| `ORDER BY` **inside** `OVER(...)`      | Controls how the window accumulates (running total, ranking order) |
| `ORDER BY` **outside** at end of query | Controls the final sort order of the output rows                   |

These are independent — you can use both in the same query.

---

## Complete Flow

```
FROM → PARTITION BY (split into groups) → ORDER BY inside OVER() (sort within group) → Function runs row by row → SELECT
```

1. SQL fetches all rows from `bookings`.
2. `PARTITION BY` divides rows into groups (one per date).
3. Within each partition, `ORDER BY` inside `OVER()` sorts the rows.
4. The window function (`SUM` or `RANK`) processes each row in that sorted order, accumulating or ranking as it goes.
5. Each row receives its computed value as a new column — no rows are collapsed.
