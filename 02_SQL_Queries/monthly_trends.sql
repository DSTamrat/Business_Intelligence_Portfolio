-- Monthly transaction trends
SELECT
    year,
    month,
    SUM(amount) AS total_amount,
    COUNT(*) AS transaction_count
FROM fact_transactions_clean
GROUP BY year, month
ORDER BY year, month;
