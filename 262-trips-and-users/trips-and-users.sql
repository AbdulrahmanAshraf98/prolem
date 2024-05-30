# Write your MySQL query statement below
select request_at  as day,round (
    sum(case when status like 'cancel%' then 1 else 0 end)/count(id)
,2) as 'Cancellation Rate' 
from Trips 
where request_at between "2013-10-01" and "2013-10-03" and client_id not in (
    select distinct users_id as client_id 
    from Users
    where  banned ='Yes' and role ='Client'   ) and driver_id  not in (
    select distinct users_id as driver_id 
    from Users
    where  banned ='Yes' and role ='Driver'   
    )
group by request_at 