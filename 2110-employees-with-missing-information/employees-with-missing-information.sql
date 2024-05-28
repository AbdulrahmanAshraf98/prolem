/* Write your T-SQL query statement below */
 select distinct  employee_id from Employees 
 where employee_id not in (
    select distinct employee_id  
    from Salaries 
 )
 union all 
 select distinct employee_id from Salaries 
 where employee_id not in (
     select distinct employee_id  
    from Employees 
 )
 order by employee_id 