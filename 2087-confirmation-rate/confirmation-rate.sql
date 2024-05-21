# Write your MySQL query statement below
select s.user_id , 
ROUND(
         IFNULL(
           SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(c.action), 
           0
         ), 
         2
       ) AS confirmation_rate
from Signups  as s 
left join Confirmations as c
on  c.user_id =s.user_id 
group by s.user_id
