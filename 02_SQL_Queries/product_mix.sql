-- Product mix analysis by account type
SELECT
    account_type,
    COUNT(*) AS total_accounts,
    SUM(amount) AS total_transaction_amount
FROM fact_transactions_clean
GROUP BY account_type
ORDER BY total_transaction_amount DESC;
