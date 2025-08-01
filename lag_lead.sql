-- LAG and LEAD functions to access previous and next salary values within a department

SELECT name, department, salary,
       LAG(salary, 1) OVER (PARTITION BY department ORDER BY salary) AS previous_salary,
       LEAD(salary, 1) OVER (PARTITION BY department ORDER BY salary) AS next_salary
FROM employees;