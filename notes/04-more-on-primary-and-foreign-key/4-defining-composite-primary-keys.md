# Defining composite primary keys

```sql
CREATE TABLE projects_employees(
    employees_id INT,
    project_id INT REFERENCES projects (id) ON DELETE CASCADE,
    PRIMARY KEY (employees_id, project_id),
    FOREIGN KEY (employees_id) REFERENCES employees (id) ON DELETE CASCADE
    -- FOREIGN KEY (employees_id, project_id) REFERENCES employees (id) ON DELETE CASCADE
);
```

Next: [Composite foreign keys](./5-composite-foreign-keys.md)
