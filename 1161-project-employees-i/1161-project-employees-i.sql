# Write your MySQL query statement below
Select project_id , Round(sum(experience_years)/count(project_id),2) as average_years from Project as p
Join Employee as e
on e.employee_id = p.employee_id
group by project_id