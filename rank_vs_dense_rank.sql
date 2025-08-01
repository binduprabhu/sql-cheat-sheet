-- Compare RANK vs DENSE_RANK to understand gaps in ranking

SELECT name, department, salary,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank_position,
       DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank_position
FROM employees;