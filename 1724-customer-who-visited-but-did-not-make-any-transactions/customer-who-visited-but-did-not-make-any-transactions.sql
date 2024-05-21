SELECT customer_id, COUNT(customer_id) AS count_no_trans 
FROM Visits as v LEFT JOIN Transactions as t 
ON v.visit_id = t.visit_id 
WHERE t.transaction_id IS NULL 
GROUP BY customer_id;

/*
-- Solution using subquery
SELECT customer_id, COUNT(customer_id) AS count_no_trans 
FROM Visits 
WHERE visit_id NOT IN (
    SELECT visit_id 
    FROM Transactions
)
GROUP BY customer_id;
*/
