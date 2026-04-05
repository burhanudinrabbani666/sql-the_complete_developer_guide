# SQL COUNT Function

The `COUNT` function is an **aggregate function** that counts rows or non-null values in a result set. It's one of the most commonly used SQL functions for summarizing data.

---

## Syntax Variants

### 1. COUNT(\*) — Count All Rows

```sql
SELECT COUNT(*)
FROM bookings;
```

**How It Works:**

- Counts **every row** in the table, regardless of whether columns contain `NULL` values.
- Use this when you want to know the total number of records.

> **Key Note:** `COUNT(*)` never ignores rows — even rows where all columns are `NULL` are included in the count.

---

### 2. COUNT(column) — Count Non-NULL Values

```sql
SELECT COUNT(amount_tipped)
FROM bookings;
```

**How It Works:**

- Counts only rows where `amount_tipped` is **not NULL**.
- Any row where the specified column is `NULL` is **silently skipped**.
- Use this when you want to know how many rows have a meaningful (non-empty) value for a specific column.

> **Key Note:** The result of `COUNT(column)` can be less than `COUNT(*)` if the column contains `NULL` values.

---

### 3. COUNT(DISTINCT column) — Count Unique Values

```sql
SELECT COUNT(DISTINCT booking_date)
FROM bookings;
```

**How It Works:**

- First removes duplicate values from `booking_date`.
- Then counts only the **unique** remaining values.
- `NULL` values are also ignored here.
- Use this when you want to know how many different values exist in a column (e.g., how many distinct days had bookings).

> **Key Note:** `DISTINCT` can be combined with `COUNT` on any column, not just dates.

---

## Quick Comparison

| Variant                  | Counts NULLs? | Counts Duplicates? | Use Case                     |
| ------------------------ | ------------- | ------------------ | ---------------------------- |
| `COUNT(*)`               | ✅ Yes        | ✅ Yes             | Total row count              |
| `COUNT(column)`          | ❌ No         | ✅ Yes             | Non-empty values in a column |
| `COUNT(DISTINCT column)` | ❌ No         | ❌ No              | Unique values in a column    |

---

## Complete Flow

1. SQL scans the `bookings` table from top to bottom.
2. Depending on the variant used, it either counts every row (`*`), skips NULLs (`column`), or skips NULLs and duplicates (`DISTINCT column`).
3. A single integer is returned as the result.

---

Next: [MIN, MAX & Aliases →](./3-min-max-alias.md)
