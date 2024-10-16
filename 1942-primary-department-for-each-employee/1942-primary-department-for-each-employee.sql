# Write your MySQL query statement below
Select employee_id , department_id from Employee
where primary_flag = "Y" or employee_id Not in (
    Select employee_id from Employee 
    where primary_flag = "Y"
)