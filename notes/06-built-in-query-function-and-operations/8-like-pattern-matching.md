# LIKE — Pattern Matching

`LIKE` compares a string column against a pattern and always returns a **boolean** (`true` or `false`). It is most commonly used in `WHERE` clauses to filter rows by partial text matches.

---

## Wildcard Characters

| Wildcard | Meaning                 | Example Pattern | Matches                    |
| -------- | ----------------------- | --------------- | -------------------------- |
| `%`      | Zero or more characters | `'Ma%'`         | `Max`, `Maria`, `Ma`       |
| `_`      | Exactly one character   | `'Ma_'`         | `Max`, `Mat` — not `Maria` |

---

## Exact Match (No Wildcard)

Without a wildcard, `LIKE` behaves like `=` — it checks for an exact match.

```sql
-- Returns true only if first_name is exactly "Max"
SELECT first_name LIKE 'Max'
FROM memberships;
-- "Max"   → true
-- "Maria" → false
```

> **Key point:** Using `LIKE` without `%` or `_` is the same as using `=`. Prefer `=` in this case for clarity.

---

## `%` — Starts With

`%` at the end matches any characters after the prefix.

```sql
-- Returns true/false alongside the name, for any name starting with "Ma"
SELECT first_name LIKE 'Ma%',
  first_name
FROM memberships;
-- "Max"   → true
-- "Maria" → true
-- "John"  → false
```

> **Key point:** Selecting `LIKE` directly is useful for debugging patterns. In production, use it inside `WHERE` to filter rows.

---

## `%` — Contains (Both Sides)

Wrapping a term with `%` on both sides matches it anywhere in the string.

```sql
-- Returns only rows where first_name contains the letter "a" anywhere
SELECT first_name
FROM memberships
WHERE first_name LIKE '%a%';
-- "Maria" → included
-- "Max"   → included  (has lowercase "a")
-- "John"  → excluded
```

---

## `ILIKE` — Case-Insensitive Match

`LIKE` is case-sensitive by default. `ILIKE` works identically but ignores case.

> ⚠️ **PostgreSQL only.** For other databases, use `LOWER(first_name) LIKE 'ma%'` instead.

```sql
-- Matches "ma", "Ma", "MA", "mA" — any capitalisation of "ma" prefix
SELECT first_name
FROM memberships
WHERE first_name ILIKE 'ma%';
-- "Max"   → included
-- "maria" → included
-- "MARIA" → included
```

---

## Pattern Cheat Sheet

```
'Max'     exact match only         → "Max"
'Ma%'     starts with "Ma"         → "Max", "Maria", "Matt"
'%a%'     contains "a" anywhere    → "Maria", "Max", "Dana"
'%a'      ends with "a"            → "Maria", "Dana"
'Ma_'     "Ma" + exactly 1 char   → "Max", "Mat" (not "Maria")
```

---

## `LIKE` vs `ILIKE` vs `=`

```
Exact match, case-sensitive     →  = 'Max'
Exact match, case-insensitive   →  ILIKE 'max'
Partial match, case-sensitive   →  LIKE 'Ma%'
Partial match, case-insensitive →  ILIKE 'ma%'
```

---

> **Note:** `ILIKE` is PostgreSQL-specific. For cross-database support, normalise the column first:
>
> ```sql
> WHERE LOWER(first_name) LIKE 'ma%'
> ```

---

Next: [Aggregate Functions](./5-aggregate-functions.md)
