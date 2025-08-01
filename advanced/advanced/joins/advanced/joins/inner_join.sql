-- 📌 INNER JOIN: Return only records with matches in both tables

-- List all employees along with their department names
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d
  ON e.department_id = d.department_id;
