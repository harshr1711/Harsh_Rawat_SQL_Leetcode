# Write your MySQL query statement below
Select s.user_id , Round(AVG(CASE When action = 'confirmed' then 1 else 0 end),2) as confirmation_rate
from confirmations as c
right join signups as s 
on s.user_id = c.user_id
group by user_id