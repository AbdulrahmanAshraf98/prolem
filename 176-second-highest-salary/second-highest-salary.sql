# Write your MySQL query statement below
select 
case when count(id)>1 then (select distinct  salary from employee  order by salary desc limit 1 offset 1  ) 
else null end as  SecondHighestSalary 
from employee 