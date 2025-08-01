-- Moving average of salary over 3 employees (based on salary order)

SELECT name, department, salary,
       AVG(salary) OVER (PARTITION BY department ORDER BY salary ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS rolling_avg
FROM employees;