# Data Normalization – The Different Forms

**1NF (First Normal Form)**

- Each table cell (column + row) must contain a single value
- Each row (record) must be unique

**2NF (Second Normal Form)**

- There are no duplicate row values due to multi-column keys (composite keys)

**3NF (Third Normal Form)**

- All column values in a row depend only on the primary key

**BCNF (3.5NF) – Boyce-Codd Normal Form**

- There must be no conflicting unique identification criteria (e.g., column value combinations)
- Avoid having multiple entities in one table

**4NF (Fourth Normal Form)**

- All combinations of non-key cell values should be possible

**5NF (Fifth Normal Form)**

- There are no conflicting column values due to implicit dependencies

---

- Simple rule: Avoid mixing datta entited in the same table, avoid multiples values in a single table cell but also try to avoid spliting basic data across dozens of tables

> One Table = One data entity
> One Cell = One Value

Next: [First section example](./6-first-section-example.md)
