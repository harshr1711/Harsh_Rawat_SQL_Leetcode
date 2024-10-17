# Write your MySQL query statement below
-- with T1 as (
--         Select account_id ,case
--             when income < 20000 then 'Low Salary'
--             when income >= 20000 and income <= 50000 then 'Average Salary'
--             Else 'High Salary'
--             End as category from Accounts
--        )
-- Select category , (count(*) , 0) as accounts_count from T1
-- group by 1
-- order by accounts_count desc


SELECT 
    'High Salary' AS category, 
    COUNT(CASE WHEN income > 50000 THEN 1 ELSE NULL END) AS accounts_count
FROM 
    accounts
GROUP BY 
    category
    
UNION 

SELECT 
    'Low Salary' AS category, 
    COUNT(CASE WHEN income < 20000 THEN 1 ELSE NULL END) AS accounts_count
FROM 
    accounts
GROUP BY 
    category
union

SELECT 
    'Average Salary' AS category, 
    COUNT(CASE WHEN income >= 20000 and income <= 50000 
     THEN 1 ELSE NULL END) AS accounts_count
FROM 
    accounts
GROUP BY 
    category
;