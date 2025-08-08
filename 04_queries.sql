-- a) Monthly Transaction Summary
SELECT 
    EXTRACT(YEAR FROM t.date) AS year,
    EXTRACT(MONTH FROM t.date) AS month,
    a.account_id,
    COUNT(t.transaction_id) AS transaction_count,
    SUM(t.amount) AS total_amount
FROM 
    Transactions t
JOIN 
    Accounts a ON t.account_id = a.account_id
GROUP BY 
    year, month, a.account_id
ORDER BY 
    year, month, a.account_id;

-- b) Detect Suspicious Transactions (> ₹1,00,000 in a Day)
SELECT
    account_id,
    DATE(date) AS transaction_date,
    SUM(amount) AS total_daily_amount
FROM 
    Transactions
GROUP BY
    account_id, DATE(date)
HAVING 
    SUM(amount) > 100000;

-- c) Employee Handling the Most Accounts
SELECT 
    employee_id, 
    COUNT(account_id) AS accounts_managed
FROM 
    Accounts
GROUP BY 
    employee_id
ORDER BY 
    accounts_managed DESC
LIMIT 1;
