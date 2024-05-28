/* Write your T-SQL query statement below */
select name  from SalesPerson as s 
where  sales_id  not in (
    select distinct sales_id 
    from Orders as o join
    Company as c 
    on o.com_id = c.com_id  
    where  c.name ='RED'
) 