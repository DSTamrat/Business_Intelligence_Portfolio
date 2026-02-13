# Credit Union Analytics Dashboard Design

## Overview

This dashboard provides a high-level view of member activity, product usage, and financial performance.  
It is designed for executives, branch managers, and analysts to monitor trends and identify opportunities.

---

## Key Performance Indicators (KPIs)

### 1. Total Transaction Amount (MTD / YTD)
Shows overall financial activity.

### 2. Number of Active Accounts
Measures engagement and product adoption.

### 3. Average Transaction Amount
Helps identify spending behavior.

### 4. Top 5 Branches by Transaction Volume
Highlights high-performing locations.

### 5. Product Mix Distribution
Shows usage of Checking, Savings, Credit Card, and Loan products.

---

## Dashboard Layout

### Section 1 — Executive Summary (Top KPIs)
- Total Transaction Amount
- Total Transactions
- Active Accounts
- Average Transaction Amount

### Section 2 — Trends
**Line Chart:** Monthly transaction amount  
- X-axis: Month  
- Y-axis: Total Amount  
- Filters: Year, Branch, Account Type  

### Section 3 — Branch Performance
**Bar Chart:** Transaction amount by branch  
- Sort by highest amount  
- Color by account type or channel  

### Section 4 — Product Mix
**Pie or Donut Chart:** Account type distribution  
- Checking  
- Savings  
- Credit Card  
- Loan  

### Section 5 — Customer Insights
**Table:** Top 10 customers by total spend  
Columns:
- Customer Name  
- Total Spend  
- Number of Transactions  
- City / State  

---

## Data Sources

- `fact_transactions_clean.csv` (ETL output)
- `customers.csv`
- `accounts.csv`
- `transactions.csv`

---

## Filters / Slicers

- Date (Year, Month)
- Branch
- Account Type
- Transaction Type (Debit/Credit)
- Channel (POS, Online, ATM, Branch)

---

## Tools Recommended

This dashboard can be built in:
- Power BI  
- Tableau  
- Looker Studio  

The design is tool‑agnostic and follows standard BI best practices.

---

## Business Questions Answered

- Which branches generate the most revenue?
- How do monthly transactions trend over time?
- Which products are most popular among members?
- Who are the highest-value customers?
- Which channels (POS, Online, ATM) are most used?

