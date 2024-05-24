SELECT IFNULL(
    (SELECT salary
    FROM (
        SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS dr 
        FROM Employee
    ) AS newSalary 
    WHERE dr = 2 
    limit 1),
NULL) AS SecondHighestSalary;
