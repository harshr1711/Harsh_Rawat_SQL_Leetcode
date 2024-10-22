# Write your MySQL query statement below
WITH cte1 AS
(

SELECT tiv_2015, COUNT(*) AS tiv_count
FROM Insurance
GROUP BY tiv_2015
),

cte2 AS
(

SELECT lat, lon, COUNT(*) AS location_count
FROM Insurance
GROUP BY lat, lon
),
cte3 as
(

SELECT pid, tiv_2015 , tiv_2016
FROM Insurance
WHERE tiv_2015 IN (SELECT tiv_2015 FROM cte1 WHERE tiv_count > 1)
AND (lat, lon) IN (SELECT lat, lon FROM cte2 WHERE location_count = 1)
)

select round(sum(tiv_2016),2) as tiv_2016 from cte3