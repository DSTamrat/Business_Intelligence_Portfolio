# Business Intelligence Portfolio – Credit Union Analytics Project

## Overview

This portfolio demonstrates an end-to-end Business Intelligence (BI) workflow using a realistic Credit Union analytics scenario.  
It showcases my hands-on experience with data engineering, ETL pipelines, data modeling, SQL analytics, dashboard design, and business reporting.

The project simulates how a financial institution analyzes member behavior, product usage, and transaction trends to support data-driven decision-making.

---

## Project Architecture 

This portfolio is organized into a complete BI lifecycle:


Each folder represents a real component of a BI project used in financial analytics.

---

## 1. Datasets (01_Datasets)

Contains three synthetic but realistic datasets:

- `customers.csv`  
- `accounts.csv`  
- `transactions.csv`

These files represent member demographics, product ownership, and financial activity.

---

## 2. ETL Pipeline (03_ETL_Pipelines)

A Python ETL script (`etl_transactions.py`) performs:

- Data loading  
- Data cleaning  
- Date formatting  
- Joining customers → accounts → transactions  
- Feature engineering (year, month)  
- Outputting a clean fact table:  
  `fact_transactions_clean.csv`

This simulates a real-world data engineering workflow.

---

## 3. Data Model (04_Data_Modeling)

A documented **star schema** designed for analytics:

### Fact Table
- `fact_transactions`  
  - Grain: one row per transaction  
  - Measures: amount, transaction count  
  - Attributes: channel, merchant category, account type, branch, etc.

### Dimensions
- `dim_customer`
- `dim_account`
- `dim_date`
- `dim_branch`

Includes SQL DDL (`tables.sql`) for warehouse implementation.

---

## 4. SQL Analytics (02_SQL_Queries)

Contains real analytical SQL queries used in financial BI:

- `top_customers.sql`  
- `branch_performance.sql`  
- `monthly_trends.sql`  
- `product_mix.sql`

These queries answer key business questions such as:

- Who are the highest-value customers?  
- Which branches perform best?  
- How do monthly transactions trend?  
- What is the product mix across account types?

---

## 5. Dashboard Design (05_Dashboards)

A full dashboard blueprint including:

- KPIs  
- Visual layout  
- Recommended charts  
- Filters/slicers  
- Business questions answered  

Designed for Power BI, Tableau, or Looker Studio.

---

## 6. Business Report (07_Reports_and_Summaries)

A polished executive-style summary that includes:

- Key metrics  
- Branch performance  
- Customer insights  
- Channel usage  
- Recommendations  
- Next steps  

This demonstrates the ability to translate data into business decisions.

---

## Skills Demonstrated

- Data Engineering (Python, ETL)
- Data Modeling (Star Schema)
- SQL Analytics
- Dashboard Design & KPI Development
- Business Storytelling & Reporting
- Git/GitHub Workflow
- End-to-End BI Project Architecture

---

## Purpose of This Portfolio

This project is designed to demonstrate:

- Hands-on technical ability  
- Real-world BI workflow knowledge  
- Clean project organization  
- Strong communication and reporting skills  
- Readiness for BI, Data Analyst, and Analytics Engineering roles  

Recruiters and hiring managers can explore each folder to see the full lifecycle of a BI solution.

---

## Next Enhancements (Planned)

- Power BI dashboard implementation  
- Automated ETL scheduling  
- Additional months of data for trend analysis  
- Machine learning add-on (customer segmentation)

---

## Author

**Tamrat Workineh**  
Business Intelligence & Data Analytics  
Independent Contractor  

