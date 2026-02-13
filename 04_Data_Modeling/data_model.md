# Credit Union Analytics Data Model

## Overview

This data model is designed to support analytics on member behavior, product usage, and transaction activity for a credit union.

The model is organized as a simple star schema with one main fact table and several logical dimensions.

---

## Fact Table

### fact_transactions

Grain: **One row per financial transaction**

**Key fields:**
- transaction_id
- account_id
- customer_id
- transaction_date

**Measures:**
- amount

**Attributes (from joins):**
- transaction_type (Debit/Credit)
- channel (POS, Online, ATM, Branch)
- merchant_category
- account_type (Checking, Savings, Credit Card, Loan)
- branch
- status (Active/Closed)
- credit_limit
- customer_city
- customer_state
- customer_gender
- join_date (customer join date)
- year
- month

This table is produced by the ETL script `03_ETL_Pipelines/etl_transactions.py`, which joins:
- `customers.csv`
- `accounts.csv`
- `transactions.csv`

---

## Dimensions (Logical)

### dim_customer

Source: `customers.csv`

- customer_id (PK)
- first_name
- last_name
- date_of_birth
- gender
- city
- state
- join_date

### dim_account

Source: `accounts.csv`

- account_id (PK)
- customer_id (FK → dim_customer)
- account_type
- open_date
- status
- branch
- credit_limit

### dim_date

Derived from `transaction_date` in `transactions.csv`

- date_key (e.g., 20240105)
- date
- day
- month
- month_name
- quarter
- year

### dim_branch

Derived from `branch` in `accounts.csv`

- branch_id (surrogate key)
- branch_name
- region (if applicable)

---

## Relationships

- fact_transactions.account_id → dim_account.account_id
- fact_transactions.customer_id → dim_customer.customer_id
- fact_transactions.transaction_date → dim_date.date
- fact_transactions.branch → dim_branch.branch_name

---

## Use Cases

This model supports:

- Monthly transaction volume by branch and product
- Customer segmentation by geography and product mix
- Credit card utilization vs credit_limit
- Channel usage (POS vs Online vs ATM vs Branch)
