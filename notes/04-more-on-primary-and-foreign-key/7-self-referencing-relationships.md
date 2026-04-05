# Self referencing relationships

```sql
SELECT e1.id,
    e1.first_name,
    e1.last_name,
    e2.first_name AS "supervisorFirstName",
    e2.last_name AS "supervisorLastName"
FROM employees AS e1
    INNER JOIN employees AS e2 ON e2.id = e1.supervisor_id;
```

Next: [Self Referencing Many-to-Many](./8-self-referencing-many-to-many.md)
