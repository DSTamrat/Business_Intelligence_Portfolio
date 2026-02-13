-- Branch performance summary: total amount and number of transactions
SELECT
    branch,
    COUNT(*) AS total_transactions,
    SUM(amount) AS total_amount,
    AVG(amount) AS avg_transaction_amount
FROM fact_transactions_clean
GROUP BY branch
ORDER BY total_amount DESC;
