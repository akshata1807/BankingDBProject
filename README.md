# BankingDBProject


***


# Banking System Database Project

## Overview
This project involves designing a secure and normalized relational database for a banking system. It includes tables for Customers, Accounts, Transactions, Branches, and Employees, with appropriate constraints, foreign keys, and business logic implemented through triggers.

---

## Project Structure

| Script Filename           | Description                                                |
|---------------------------|------------------------------------------------------------|
| `01_create_database.sql`  | Creates the `banking` database and selects it for use.     |
| `02_create_tables.sql`    | Creates all tables (`Customers`, `Branches`, `Employees`, `Accounts`, `Transactions`) with relationships and constraints. |
| `03_insert_sample_data.sql` | Inserts sample data into the tables for testing purposes.  |
| `04_queries.sql`          | Contains assignment queries: monthly transaction summary, suspicious transaction detection, employee managing most accounts. |
| `05_triggers.sql`         | Optional trigger to prevent accounts from having a negative balance. |

---

## Tables and Relationships

- **Customers**: Holds customer information.
- **Branches**: Information about bank branches.
- **Employees**: Bank employees, each linked to a branch.
- **Accounts**: Bank accounts linked to customers, branches, and employees.
- **Transactions**: Records of deposits and withdrawals linked to accounts.

All foreign key relationships enforce referential integrity with proper data types.

---

## Key Business Logic

- Account balances cannot go negative — enforced by a `CHECK` constraint and a trigger.
- Each account belongs to exactly one customer.
- Suspicious transactions are detected via query if the daily amount exceeds ₹1,00,000.

---

## How to Use

1. Run `01_create_database.sql` to create and use the database.
2. Run `02_create_tables.sql` to create tables with constraints.
3. Run `03_insert_sample_data.sql` to insert example data.
4. Run queries from `04_queries.sql` to get reports and insights.
5. Run `05_triggers.sql` to add trigger for balance validation.

---

Checked




