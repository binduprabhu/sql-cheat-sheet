-- Recursive CTE: Generate a sequence of numbers from 1 to 10

WITH RECURSIVE nums AS (
    SELECT 1 AS number
    UNION ALL
    SELECT number + 1 FROM nums WHERE number < 10
)
SELECT * FROM nums;