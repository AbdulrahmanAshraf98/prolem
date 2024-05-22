SELECT "Low Salary" as category,
Count(income) as accounts_count
FROM Accounts
WHERE income < 20000

UNION

SELECT "Average Salary" as category,
Count(income) as accounts_count
FROM Accounts
WHERE income between  20000 and   50000

UNION

SELECT "High Salary" as category,
Count(income) as accounts_count
FROM Accounts
WHERE income > 50000;