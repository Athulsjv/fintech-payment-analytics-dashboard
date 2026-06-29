SELECT
  isFlaggedFraud,
  isFraud,
  COUNT(*) as total,
  ROUND(SUM(amount), 2) as total_value
FROM transactions_clean
GROUP BY isFlaggedFraud, isFraud
ORDER BY isFlaggedFraud, isFraud;