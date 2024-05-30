# Write your MySQL query statement below
select u.user_id as buyer_id   , u.join_date   ,ifnull(
    count(
        case when year(o.order_date ) ='2019' then o.order_id 
        else null
        end 
     ),0) as orders_in_2019  
from Orders  as o 
right join Users as u 
on o.buyer_id=u.user_id
group by u.user_id 
