# Write your MySQL query statement below
Select employee_id from Employees
where Salary < 30000 
and manager_id not in ( Select employee_id from Employees)

order by employee_id