-- 📌 Sorting Data (ORDER BY)

-- Sort employees by salary in descending order
SELECT name, salary 
FROM employees
ORDER BY salary DESC;

-- Sort employees by salary in ascending order
SELECT name, salary 
FROM employees
ORDER BY salary ASC;

-- Sort by multiple columns: first by department (A-Z), then salary (high to low)
SELECT name, department, salary 
FROM employees
ORDER BY department ASC, salary DESC;

-- Sort products by sales amount descending (highest selling first)
SELECT product_name, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC;

-- Sort top 5 highest paid employees (LIMIT with ORDER BY)
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;
