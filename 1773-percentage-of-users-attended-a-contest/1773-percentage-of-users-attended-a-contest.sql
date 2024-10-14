# Write your MySQL query statement below
select r.contest_id , Round(count(r.contest_id)/(select count(distinct user_id)from Users)*100,2) as percentage
from users as u
left join register as r
on r.user_id = u.user_id
where r.contest_id is not null
group by r.contest_id
order by percentage desc , contest_id asc