-- Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(200),
    phone VARCHAR(15)
);

-- Branches Table
CREATE TABLE Branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

-- Employees Table
CREATE TABLE Employees (
    employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    branch_id INT,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    CONSTRAINT fk_employee_branch FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);

-- Accounts Table
CREATE TABLE Accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    employee_id INT UNSIGNED,
    balance DECIMAL(15,2) NOT NULL CHECK (balance >= 0),
    CONSTRAINT fk_account_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    CONSTRAINT fk_account_branch FOREIGN KEY (branch_id) REFERENCES Branches(branch_id),
    CONSTRAINT fk_account_employee FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Transactions Table
CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    amount DECIMAL(15,2) NOT NULL,
    transaction_type VARCHAR(20),
    date DATE NOT NULL,
    CONSTRAINT fk_transaction_account FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);
