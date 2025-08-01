-- ROW_NUMBER example: Assigns a unique row number within each department based on salary

SELECT name, department, salary,
       ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employees;