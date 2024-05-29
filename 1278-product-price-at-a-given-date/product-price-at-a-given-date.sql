WITH RankedProducts AS (
    SELECT product_id, new_price, 
           ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY change_date DESC) as rn
    FROM Products
    WHERE change_date <= '2019-08-16'
)
SELECT product_id, new_price AS price
FROM RankedProducts
WHERE rn = 1
union  
select product_id , 10 as price 
from Products  
where change_date>'2019-08-16' and (product_id) not in (
    select product_id 
    from Products  
    where change_date<='2019-08-16'
)