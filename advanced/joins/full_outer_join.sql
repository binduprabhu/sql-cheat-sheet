
-- FULL OUTER JOIN: Combine all records from both tables

SELECT e.name, d.department_name
FROM employees e
FULL OUTER JOIN departments d
  ON e.department_id = d.department_id;
