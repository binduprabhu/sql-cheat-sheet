
--  LEFT JOIN: Return all records from the left table, match from the right table if possible

-- Show all employees and their department names (if assigned)
SELECT e.name, d.department_name
FROM employees e
LEFT JOIN departments d
  ON e.department_id = d.department_id;

-- Find employees who are not assigned to any department
SELECT e.name
FROM employees e
LEFT JOIN departments d
  ON e.department_id = d.department_id
WHERE d.department_name IS NULL;
