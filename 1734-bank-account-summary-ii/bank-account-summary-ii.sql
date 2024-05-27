/* Write your T-SQL query statement below */
select u.name ,sum(t.amount) as balance  from Transactions as t
join Users as u
on t.account=u.account
group by t.account,u.name
having sum(t.amount)>10000
