-- postgresql
ALTER TABLE employers
ALTER COLUMN yearly_revenue
SET DATA TYPE FLOAT;
--
----- Check data type
SELECT column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'employers';