SELECT customer_id, COUNT(customer_id) AS count_no_trans 
FROM Visits 
WHERE visit_id NOT IN (
    SELECT  visit_id 
    FROM Transactions
)
group by customer_id;