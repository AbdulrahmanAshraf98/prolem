# Write your MySQL query statement below
select sell_date  ,count(distinct product) as num_sold   ,
group_concat(DISTINCT product ORDER BY product SEPARATOR ',')as  products

from Activities 
group by sell_date  
ORDER BY sell_date;
