# Write your MySQL query statement below
select e2.name as Employee  from Employee as e1
join Employee as e2 
on e2.managerId = e1.id and e2.salary >e1.salary