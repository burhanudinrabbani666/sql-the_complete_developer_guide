# SQL Window Functions

A **window function** performs a calculation across a set of rows related to the current row — without collapsing them into a single result like a regular aggregate would.

> **Key Distinction:** `GROUP BY` + `SUM()` gives you **one row per group**. A window function gives you **one row per original row**, with the aggregate result attached alongside it.

---

## Basic Window Function — OVER()

```sql
SELECT booking_date,
       amount_tipped,
       SUM(amount_tipped) OVER() AS total_tipped  -- Window function
FROM bookings;
```

**How It Works:**

- `OVER()` is what makes this a window function instead of a regular aggregate.
- An empty `OVER()` means the window is **the entire table** — every row sees the same total.
- Each row keeps its own `booking_date` and `amount_tipped`, and gains a new column showing the grand total of all tips.
- The underlying rows are **never collapsed** — you get the same number of rows as the original table.

**Example Output:**

| booking_date | amount_tipped | total_tipped |
| ------------ | ------------- | ------------ |
| 2024-01-01   | 5.00          | 42.00        |
| 2024-01-01   | 8.00          | 42.00        |
| 2024-01-02   | 12.00         | 42.00        |
| 2024-01-03   | 17.00         | 42.00        |

> **Key Note:** Every row shows the same `total_tipped` (42.00) because `OVER()` with no arguments looks at all rows as a single window.

---

## PARTITION BY — Window per Group

```sql
SELECT booking_date,
       amount_tipped,
       SUM(amount_tipped) OVER(PARTITION BY booking_date) AS daily_total
FROM bookings;
```

**How It Works:**

- `PARTITION BY booking_date` splits the rows into separate windows — one per unique date.
- Each row now sees the total tips **for its own date only**, not the grand total.
- Rows are still not collapsed — you still get one output row per original row.

**Example Output:**

| booking_date | amount_tipped | daily_total |
| ------------ | ------------- | ----------- |
| 2024-01-01   | 5.00          | 13.00       |
| 2024-01-01   | 8.00          | 13.00       |
| 2024-01-02   | 12.00         | 12.00       |
| 2024-01-03   | 17.00         | 17.00       |

> **Key Note:** `PARTITION BY` is like `GROUP BY` but without collapsing rows. Each partition is an independent window that the function runs over separately.

---

## Side-by-Side Comparison

|                      | Regular Aggregate | `OVER()`          | `OVER(PARTITION BY ...)` |
| -------------------- | ----------------- | ----------------- | ------------------------ |
| Rows returned        | One per group     | All original rows | All original rows        |
| Scope of calculation | Whole group       | Entire table      | Per partition/group      |
| Collapses rows?      | ✅ Yes            | ❌ No             | ❌ No                    |
| Can see row detail?  | ❌ No             | ✅ Yes            | ✅ Yes                   |

---

## Complete Flow

```
FROM → WHERE → Window Function evaluates its OVER() window → SELECT
```

1. SQL fetches all rows from `bookings`.
2. For each row, the window function looks at the rows defined by its `OVER()` clause.
3. With `OVER()` — the window is the full table; every row gets the same result.
4. With `OVER(PARTITION BY booking_date)` — the window resets per date; each row gets its partition's result.
5. The aggregate value is attached to each row as a new column — no rows are removed or merged.

> **Key Benefit:** Window functions let you compare each row against a group total or running aggregate in a single query — something that would otherwise require a subquery or a JOIN.

---

Next: [ORDER BY & RANK →](./13-order-by-rank.md)
