/* Write your T-SQL query statement below */
select d.name  as  Department ,e.name as Employee  , e.salary  as Salary 
from (
    select *, dense_rank() over(partition by departmentId  order by salary desc)  as dr
    from Employee
)as e 
join Department as d 
on e.departmentId =d.id 
where dr<=3

