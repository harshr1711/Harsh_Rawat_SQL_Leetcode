# Write your MySQL query statement below
with T1 as (
    Select person_name , weight , turn ,SUM(weight) over (order by turn) as total from Queue
)
Select person_name from T1
where total <= 1000
Order by total Desc
Limit 1 ;