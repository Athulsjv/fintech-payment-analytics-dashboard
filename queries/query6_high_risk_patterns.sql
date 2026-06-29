SELECT
  type,
  transaction_size,
  time_of_day,
  COUNT(*) as total_transactions,
  SUM(isFraud) as fraud_count,
  ROUND(SUM(isFraud) * 100.0 / COUNT(*), 4) as fraud_rate_pct,
  ROUND(SUM(CASE WHEN isFraud = 1 THEN amount ELSE 0 END), 2) as fraud_value,
  ROUND(AVG(amount), 2) as avg_amount
FROM transactions_clean
GROUP BY type, transaction_size, time_of_day
HAVING COUNT(*) > 1000
ORDER BY fraud_rate_pct DESC
LIMIT 30;

