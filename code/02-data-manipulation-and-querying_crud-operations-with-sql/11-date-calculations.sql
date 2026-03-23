-- SELECT *
-- FROM sales
-- WHERE date_fulfilled is NOT NULL;
-- When using TIMESTAMP data Types
SELECT *
FROM sales
WHERE EXTRACT (
        DAY
        FROM date_fulfilled - date_created
    ) <= 5;