-- Group By & Aggregations

-- Count number of employees per department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Total salary per department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Count of employees with salary above 70K per department (using HAVING)
SELECT department, COUNT(*) AS high_earners
FROM employees
WHERE salary > 70000
GROUP BY department
HAVING COUNT(*) > 2;

-- Conditional Aggregation: Gender split per department
SELECT department,
       SUM(CASE WHEN gender = 'Male' THEN 1 ELSE 0 END) AS male_count,
       SUM(CASE WHEN gender = 'Female' THEN 1 ELSE 0 END) AS female_count
FROM employees
GROUP BY department;

-- Combine aggregation with sorting: Departments with highest average salary first
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;
