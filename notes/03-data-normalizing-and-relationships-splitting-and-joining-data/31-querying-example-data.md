# Querying example data

```sql
SELECT e.id AS employee_id,
    e.first_name,
    e.last_name,
    p.title
FROM employees AS e
    INNER JOIN projects_employees AS pe ON pe.employees_id = e.id
    INNER JOIN projects AS p ON pe.project_id = p.id;
```

Next: [Practicing joins filtering](./32-practicing-joins-filtering.md)
