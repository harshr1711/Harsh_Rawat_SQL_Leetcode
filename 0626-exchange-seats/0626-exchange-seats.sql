# Write your MySQL query statement below
Select case 
when (id % 2 =0) then id - 1
when (id % 2 != 0) and id != (select max(id) from seat) then id + 1
-- when (id % 2 != 0) and id = (select max(id) from seat) then id
else id
end as id  , student
from Seat
order by id