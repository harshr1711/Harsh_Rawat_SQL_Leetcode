# Write your MySQL query statement below
select euni.unique_id , e.name from employees as e
left join employeeuni as euni
on e.id = euni.id