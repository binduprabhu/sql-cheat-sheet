
-- RIGHT JOIN: Return all records from the right table, match from the left if possible

-- Show all departments and employees (if any assigned)
SELECT e.name AS employee_name, d.department_name
FROM employees e
RIGHT JOIN departments d
  ON e.department_id = d.department_id;

-- Departments without assigned employees
SELECT d.department_name
FROM employees e
RIGHT JOIN departments d
  ON e.department_id = d.department_id
WHERE e.name IS NULL;
