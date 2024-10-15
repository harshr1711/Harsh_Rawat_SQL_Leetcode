# Write your MySQL query statement below
Select Max(num) as num 
from (
    Select num from MyNumbers 
    Group by num
    Having Count(*) = 1
) as SingleNumbers