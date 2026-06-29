SELECT
  week_period,
  COUNT(*) as total_transactions,
  SUM(isFraud) as fraud_count,
  ROUND(SUM(isFraud) * 100.0 / COUNT(*), 4) as fraud_rate_pct,
  ROUND(SUM(amount), 2) as total_value,
  ROUND(AVG(amount), 2) as avg_amount
FROM transactions_clean
GROUP BY week_period
ORDER BY week_period;

