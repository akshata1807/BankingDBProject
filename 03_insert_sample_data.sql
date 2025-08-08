-- Insert Branches
INSERT INTO Branches (name, location) VALUES 
  ('Main Branch', 'Mumbai'),
  ('West Branch', 'Pune');

-- Insert Customers
INSERT INTO Customers (name, address, phone) VALUES
  ('Ravi Kumar', '123 Street, Mumbai', '9876543210'),
  ('Anita Singh', '456 Avenue, Pune', '9123456789');

-- Insert Employees
INSERT INTO Employees (branch_id, name, position) VALUES
  (1, 'Sunil Desai', 'Manager'),
  (2, 'Priya Rao', 'Cashier');

-- Insert Accounts (assign to customers, branches, and employees)
INSERT INTO Accounts (customer_id, branch_id, employee_id, balance) VALUES
  (1, 1, 1, 50000.00),
  (2, 2, 2, 120000.00);

-- Insert Transactions
INSERT INTO Transactions (account_id, amount, transaction_type, date) VALUES
  (1, 5000.00, 'Deposit', '2024-06-01'),
  (2, 115000.00, 'Deposit', '2024-06-03');
