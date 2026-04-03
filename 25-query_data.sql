-- SELECT e.id AS employee_id,
--     e.first_name,
--     e.last_name,
--     p.title
-- FROM employees AS e
--     LEFT JOIN projects_employees AS pe ON pe.employees_id = e.id
--     LEFT JOIN projects AS p ON pe.project_id = p.id;
-- SELECT e.id AS employee_id, e.first_name, e.last_name, p.title
-- FROM employees AS e
--     INNER JOIN projects_employees AS pe ON pe.employees_id = e.id
--     INNER JOIN projects AS p ON pe.project_id = p.id;

-- SELECT * FROM teams;

-- SELECT e.id AS employee_id, e.first_name, e.last_name, t.name AS team_name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- WHERE t.id = 2;


-- Selecting employee in building 3
SELECT e.id, e.first_name, e.last_name, t.name, c.name  FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
INNER JOIN company_buildings AS c ON c.id = t.building_id  
WHERE c.id = 3
ORDER BY e.id ASC;