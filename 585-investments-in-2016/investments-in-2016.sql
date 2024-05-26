# Write your MySQL query statement below
select round( sum(i.tiv_2016),2)as tiv_2016   from Insurance as i
where (i.lat , i.lon)   not in (
    select lat,lon
    from Insurance 
    group by lat ,lon
    having count(pid)>1
) and i.tiv_2015 in (
    select tiv_2015
    from Insurance
    group by tiv_2015 
    having count(pid)>1
) 
