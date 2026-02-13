-- Top 10 customers by total transaction amount
SELECT
    customer_id,
    SUM(amount) AS total_spend,
    COUNT(*) AS transaction_count
FROM fact_transactions_clean
GROUP BY customer_id
ORDER BY total_spend DESC
LIMIT 10;
