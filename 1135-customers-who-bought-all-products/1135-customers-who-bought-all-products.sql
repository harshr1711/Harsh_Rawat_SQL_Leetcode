# Write your MySQL query statement below
Select  c.customer_id from Customer as c
join product as p
on p.product_key = c.product_key
group by customer_id
Having count(Distinct p.product_key) = (Select count(product_key) FROM Product)
