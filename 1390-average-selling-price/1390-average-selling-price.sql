# Write your MySQL query statement below
Select p.product_id , 
IfNull(Round(sum(p.price * us.units)/ sum(us.units) ,2),0) as average_price from Prices as p
Left Join UnitsSold as us
on p.product_id = us.product_id 
and purchase_date between start_date and end_date
Group by p.product_id
