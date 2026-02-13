-- Dimension: Customer
CREATE TABLE dim_customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender CHAR(1),
    city VARCHAR(100),
    state CHAR(2),
    join_date DATE
);

-- Dimension: Account
CREATE TABLE dim_account (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(50),
    open_date DATE,
    status VARCHAR(20),
    branch VARCHAR(100),
    credit_limit DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id)
);

-- Fact: Transactions
CREATE TABLE fact_transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    customer_id INT,
    transaction_date DATE,
    transaction_type VARCHAR(20),
    amount DECIMAL(12,2),
    channel VARCHAR(50),
    merchant_category VARCHAR(100),
    year INT,
    month INT,
    FOREIGN KEY (account_id) REFERENCES dim_account(account_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id)
);
