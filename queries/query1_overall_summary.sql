SELECT
  COUNT(*) as total_transactions,
  SUM(isFraud) as total_fraud,
  ROUND(SUM(isFraud) * 100.0 / COUNT(*), 4) as fraud_rate_pct,
  ROUND(SUM(amount), 2) as total_transaction_value,
  ROUND(AVG(amount), 2) as avg_transaction_value,
  ROUND(MAX(amount), 2) as max_transaction_value,
  SUM(CASE WHEN isFraud = 1 THEN amount ELSE 0 END) as total_fraud_value,
  ROUND(SUM(CASE WHEN isFraud = 1 THEN amount ELSE 0 END) * 100.0 / SUM(amount), 4) as fraud_value_pct
FROM transactions_clean;
