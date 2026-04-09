# Mathematical Functions — Arithmetic

SQL provides four core functions to control how decimal numbers are rounded or truncated. Each behaves differently, so choosing the right one matters.

---

## The Four Functions at a Glance

| Function | Behavior                                                | Example Input                | Output |
| -------- | ------------------------------------------------------- | ---------------------------- | ------ |
| `CEIL`   | Always rounds **up** to the nearest integer             | `16.1`                       | `17`   |
| `FLOOR`  | Always rounds **down** to the nearest integer           | `16.9`                       | `16`   |
| `ROUND`  | Rounds to the **nearest** integer (standard math rules) | `16.4` → `16`, `16.6` → `17` |
| `TRUNC`  | **Cuts off** the decimal, always toward zero            | `16.4` → `16`, `16.6` → `16` |

---

## CEIL — Round Up

Always moves to the next whole number above, regardless of the decimal value.

```sql
SELECT CEIL(consumption)  -- 16.1 → 17, 16.9 → 17
FROM memberships;
```

> **Key point:** Even `16.1` becomes `17`. Any decimal at all pushes the result up.

---

## FLOOR — Round Down

Always moves to the whole number below, regardless of the decimal value.

```sql
SELECT FLOOR(consumption)  -- 16.1 → 16, 16.9 → 16
FROM memberships;
```

> **Key point:** Even `16.9` becomes `16`. The decimal is dropped and the result stays down.

---

## ROUND — Standard Rounding

Follows standard math rules: `.5` and above rounds up, below `.5` rounds down.

```sql
SELECT ROUND(consumption)  -- 16.4 → 16, 16.6 → 17
FROM memberships;
```

> **Key point:** This is the most intuitive function — it works exactly like rounding taught in school.

---

## TRUNC — Truncate (Cut Off)

Removes the decimal portion entirely without any rounding in either direction.

```sql
SELECT TRUNC(consumption)  -- 16.4 → 16, 16.6 → 16
FROM memberships;
```

> **Key point:** Unlike `FLOOR`, `TRUNC` always moves toward zero. For negative numbers, `-16.9` becomes `-16` (not `-17`).

---

## CEIL vs FLOOR vs ROUND vs TRUNC — Key Differences

```
Value: 16.4
  CEIL  → 17   (up, no matter what)
  FLOOR → 16   (down, no matter what)
  ROUND → 16   (down, because .4 < .5)
  TRUNC → 16   (cut off decimal)

Value: 16.6
  CEIL  → 17   (up, no matter what)
  FLOOR → 16   (down, no matter what)
  ROUND → 17   (up, because .6 >= .5)
  TRUNC → 16   (cut off decimal)

Value: -16.6
  CEIL  → -16  (up toward zero)
  FLOOR → -17  (down away from zero)
  ROUND → -17  (away from zero)
  TRUNC → -16  (toward zero, same as CEIL for negatives)
```

---

## When to Use Each

- **CEIL** — Billing, reservations, or any case where a partial unit must count as a full unit.
- **FLOOR** — Age calculations, inventory where partial units don't count.
- **ROUND** — Displaying scores, averages, or any user-facing number.
- **TRUNC** — Extracting the integer part of a value without any rounding effect.

---

Next: [String Functions — Select](./2-string-functions-select.md)
