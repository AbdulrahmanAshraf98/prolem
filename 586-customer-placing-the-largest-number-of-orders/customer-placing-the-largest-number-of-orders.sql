/* Write your T-SQL query statement below */
select customer_number from 
(
    select top(1) customer_number, count(customer_number) as customer_orders from Orders 
    group by customer_number 
    order by customer_orders  desc
) as new_orders