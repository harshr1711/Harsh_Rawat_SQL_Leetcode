# Write your MySQL query statement below
with cte as (
    Select requester_id , accepter_id from RequestAccepted
    Union All 
    Select accepter_id , requester_id from RequestAccepted
)
Select requester_id as id , count(accepter_id) as num from cte
group by id
order by num desc
limit 1