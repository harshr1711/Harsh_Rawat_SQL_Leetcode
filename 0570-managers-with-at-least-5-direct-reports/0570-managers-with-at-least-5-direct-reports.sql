# Write your MySQL query statement below
SELECT f.name FROM employee f WHERE f.id 
IN ( SELECT m.managerId FROM employee m JOIN employee e ON e.id = m.managerId
GROUP BY m.managerId 
HAVING COUNT(m.managerId) >= 5 );