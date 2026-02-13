import pandas as pd
from pathlib import Path

# Paths
BASE_DIR = Path(__file__).resolve().parents[1]  # repo root
DATA_DIR = BASE_DIR / "01_Datasets"
OUTPUT_DIR = BASE_DIR / "03_ETL_Pipelines" / "output"
OUTPUT_DIR.mkdir(exist_ok=True)

# Load raw data
customers = pd.read_csv(DATA_DIR / "customers.csv")
accounts = pd.read_csv(DATA_DIR / "accounts.csv")
transactions = pd.read_csv(DATA_DIR / "transactions.csv")

# Basic cleaning
customers['join_date'] = pd.to_datetime(customers['join_date'])
accounts['open_date'] = pd.to_datetime(accounts['open_date'])
transactions['transaction_date'] = pd.to_datetime(transactions['transaction_date'])

# Join: transactions -> accounts -> customers
tx_joined = (
    transactions
    .merge(accounts, on="account_id", how="left", suffixes=("", "_acct"))
    .merge(customers, on="customer_id", how="left", suffixes=("", "_cust"))
)

# Derive a few useful fields
tx_joined['year'] = tx_joined['transaction_date'].dt.year
tx_joined['month'] = tx_joined['transaction_date'].dt.month

# Save cleaned / modeled transaction table
output_path = OUTPUT_DIR / "fact_transactions_clean.csv"
tx_joined.to_csv(output_path, index=False)

print(f"ETL complete. Output saved to: {output_path}")
