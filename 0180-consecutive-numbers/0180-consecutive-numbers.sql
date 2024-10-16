# Write your MySQL query statement below
with t1 as (Select id,num , 
lag(num,1) over(order by id asc) as lag1,
lag(num,2) over(order by id asc) as lag2

from Logs )


select distinct num as ConsecutiveNums from t1
where num = lag1 and lag1 = lag2