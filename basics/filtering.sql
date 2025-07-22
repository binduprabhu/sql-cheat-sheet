-- 📌 Filtering Data (WHERE, LIKE, IN, BETWEEN)

-- WHERE clause
SELECT * FROM employees WHERE department = 'Sales';

-- Multiple filters
SELECT * FROM employees WHERE department = 'Sales' AND salary > 50000;

-- IN clause
SELECT * FROM employees WHERE department IN ('Sales', 'HR');

-- BETWEEN
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 80000;

-- LIKE for pattern matching
SELECT * FROM employees WHERE name LIKE 'A%';

-- NULL value filter
SELECT * FROM employees WHERE manager_id IS NULL;

