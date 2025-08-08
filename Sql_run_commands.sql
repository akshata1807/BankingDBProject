SHOW TABLES;
SELECT * FROM Customers;
SELECT * FROM Branches;
SELECT * FROM Employees;
SELECT * FROM Accounts;
SELECT * FROM Transactions;

UPDATE Accounts SET balance = -100 WHERE account_id = 1;