-- Write your SQL query here
SELECT 
    c.name, 
    c.city, 
    COALESCE(SUM(o.Amount), 0) AS total_spent
FROM customers c 
    LEFT JOIN orders o ON o.customer_id = c.id 
GROUP BY c.id, c.Name, c.city
ORDER BY total_spent DESC, c.Name ASC 

