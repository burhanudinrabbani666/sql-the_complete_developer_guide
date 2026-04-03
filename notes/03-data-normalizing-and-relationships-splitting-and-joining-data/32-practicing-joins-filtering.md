# Practicing joins filtering

```sql
-- Selecting employee in building 3
SELECT e.id, e.first_name, e.last_name, t.name, c.name  FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
INNER JOIN company_buildings AS c ON c.id = t.building_id
WHERE c.id = 3
ORDER BY e.id ASC;
```

Next: [Referential integrity](./33-referential-integrity.md)
