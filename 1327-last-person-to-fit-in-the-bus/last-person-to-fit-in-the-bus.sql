WITH QueueWithRunningTotal AS (
    SELECT 
        person_name, 
        weight, 
        turn, 
        SUM(weight) OVER (ORDER BY turn ROWS UNBOUNDED PRECEDING) AS total_weight
    FROM Queue
)
SELECT TOP 1 person_name
FROM QueueWithRunningTotal
WHERE total_weight <= 1000
ORDER BY turn DESC