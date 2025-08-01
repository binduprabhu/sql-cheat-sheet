-- Multiple CTEs chained together to filter and rank employees

WITH high_salary AS (
    SELECT * FROM employees WHERE salary > 60000
),
ranked_employees AS (
    SELECT name, department, salary,
           RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
    FROM high_salary
)
SELECT * FROM ranked_employees WHERE rank <= 3;
