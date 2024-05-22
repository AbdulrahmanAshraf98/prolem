select s.product_id , s.year as first_year  ,s.quantity,s.price 
from Sales as s
join (
    select product_id, MIN(year) AS min_year 
    from sales 
    group by product_id
) as min_year_sales
on s.product_id=min_year_sales.product_id AND s.year = min_year_sales.min_year

