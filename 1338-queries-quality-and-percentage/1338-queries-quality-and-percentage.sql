# Write your MySQL query statement below
Select query_name , round(sum(rating/position)/count(query_name),2) as quality , 
round(100*AVG(rating<3),2) as poor_query_percentage
from Queries
where isnull(query_name) = 0
group by query_name 
