# Write your MySQL query statement below
with T1 as
(Select product_id, min(year) as first_year from sales
group by product_id
)
select s.product_id, s.year as first_year, s.quantity , price from Sales as s
join T1 
on s.product_id = T1.product_id
where s.year = T1.first_year
