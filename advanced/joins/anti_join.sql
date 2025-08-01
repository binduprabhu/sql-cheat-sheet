
-- ANTI JOIN: Records in one table with no match in the other

-- Employees without departments
SELECT e.*
FROM employees e
LEFT JOIN departments d
  ON e.department_id = d.department_id
WHERE d.department_id IS NULL;
