# SQL HAVING vs WHERE

`WHERE` and `HAVING` both filter data, but they run at **different stages** of a query. Understanding when each applies is one of the most important concepts in SQL aggregation.

---

## WHERE — Filter Raw Rows (Before Aggregation)

```sql
SELECT booking_date,
       COUNT(booking_date)
FROM bookings
WHERE amount_billed > 30
GROUP BY booking_date;
```

**How It Works:**

- `WHERE` runs **before** `GROUP BY` — it filters individual rows from the raw table.
- Only bookings where `amount_billed > 30` are kept; all others are discarded.
- `GROUP BY` then groups the already-filtered rows by `booking_date`.
- `COUNT()` counts how many of those filtered bookings exist per date.

> **Key Note:** `WHERE` cannot reference aggregate functions like `SUM()` or `COUNT()` — those values don't exist yet at the point `WHERE` runs.

---

## HAVING — Filter Aggregated Groups (After Aggregation)

```sql
SELECT booking_date,
       COUNT(booking_date)
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) > 30;
```

**How It Works:**

- `GROUP BY` first groups **all** rows by `booking_date` with no pre-filtering.
- `HAVING` runs **after** grouping — it evaluates each group using the aggregate result.
- Only groups where the total billed amount exceeds 30 are kept in the output.
- `COUNT(booking_date)` is then shown for each surviving group.

> **Key Note:** `HAVING` is the only place you can filter using aggregate functions. Think of it as `WHERE` for groups.

---

## Side-by-Side Comparison

|                     | `WHERE`           | `HAVING`                            |
| ------------------- | ----------------- | ----------------------------------- |
| Runs                | Before `GROUP BY` | After `GROUP BY`                    |
| Filters             | Individual rows   | Grouped results                     |
| Can use aggregates? | ❌ No             | ✅ Yes                              |
| Typical use         | Raw column values | `SUM()`, `COUNT()`, `AVG()` results |

---

## Complete Flow

```
FROM → WHERE (filter rows) → GROUP BY (group rows) → HAVING (filter groups) → SELECT
```

1. SQL fetches all rows from `bookings`.
2. `WHERE` discards any rows that fail the condition.
3. `GROUP BY` organizes the remaining rows into groups.
4. `HAVING` discards any groups that fail the aggregate condition.
5. `SELECT` returns the final columns and labels for the surviving groups.

> **Key Benefit:** You can combine both in one query — use `WHERE` to filter unwanted rows early (better performance), then `HAVING` to filter groups based on their aggregate values.

---

Next: [Nested Subqueries →](./11-nested-subqueries.md)
