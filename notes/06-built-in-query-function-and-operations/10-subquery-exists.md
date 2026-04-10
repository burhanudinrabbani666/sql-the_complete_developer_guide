# subquery EXISTS

```sql
SELECT id
FROM orders AS o
WHERE EXISTS(
    SELECT email
    FROM customers AS c
    WHERE o.customer_id = c.id
      AND c.email = 'max@test.com'
  );
-- Using Inner join
SELECT o.id
FROM orders AS o
  INNER JOIN customers AS c ON c.id = o.customer_id
  AND c.email = 'max@test.com'
```

---

## EXISTS vs INNER JOIN

## Full Queries

### Using EXISTS

```sql
SELECT id
FROM orders AS o
WHERE EXISTS (
    SELECT email
    FROM customers AS c
    WHERE o.customer_id = c.id
      AND c.email = 'max@test.com'
);
```

### Using INNER JOIN

```sql
SELECT o.id
FROM orders AS o
INNER JOIN customers AS c ON c.id = o.customer_id
    AND c.email = 'max@test.com';
```

---

## Explanation

### EXISTS

- **Purpose:** only checks _whether a matching row exists or not_
- As soon as one matching row is found, the database **stops** — it does not scan all rows
- Does not add columns from the `customers` table to the result
- Best used when you **only need data from `orders`**

### INNER JOIN

- **Purpose:** combine two tables together
- Processes **all** matching rows
- Can cause **duplicate rows** if one customer has multiple related records
- Best used when you **need columns from both tables**

---

## Comparison

| Criteria                        | EXISTS                       | INNER JOIN    |
| ------------------------------- | ---------------------------- | ------------- |
| Performance (filtering only)    | ✅ Faster                    | Can be slower |
| Risk of duplicate rows          | ✅ None                      | ⚠️ Possible   |
| Access columns from other table | ❌ Not possible              | ✅ Possible   |
| Readability of intent           | ✅ Clearly "check existence" | Less explicit |

---

## Conclusion

**For this case — use `EXISTS`.** You only need the `id` from `orders` and simply want to filter based on a condition in `customers`, not retrieve data from it.

Next: [subquery IN](./11-subquery-in.md)
