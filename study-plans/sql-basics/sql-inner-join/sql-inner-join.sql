-- Write your SQL query here
SELECT 
    e.Name,
    e.Salary,
    d.dept_name
FROM employees e 
    INNER JOIN departments d ON e.dept_id = d.id
ORDER BY e.Name ASC 