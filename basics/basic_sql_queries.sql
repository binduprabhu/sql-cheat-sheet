
-- Basic SQL Structure

-- View all rows
SELECT * FROM employees;

-- View specific columns
SELECT employee_id, name, department FROM employees;

-- Remove duplicates
SELECT DISTINCT department FROM employees;

-- Using simple expressions
SELECT name, salary, salary * 1.10 AS adjusted_salary FROM employees;

-- Using Aliases
SELECT name AS employee_name, department AS dept FROM employees;
