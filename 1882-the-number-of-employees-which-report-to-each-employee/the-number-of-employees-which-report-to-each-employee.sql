# Write your MySQL query statement below
select e2.employee_id ,e2.name, 
count(distinct e1.employee_id) as reports_count ,
round(sum(e1.age)/count(distinct e1.employee_id)) as average_age 
from Employees as e1
join Employees as e2
on e2.employee_id =e1.reports_to 
group by e1.reports_to 