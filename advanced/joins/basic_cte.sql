-- Basic CTE: Filter employees earning above average salary

WITH high_earners AS (
    SELECT name, salary FROM employees
    WHERE salary > (SELECT AVG(salary) FROM employees)
)
SELECT * FROM high_earners;