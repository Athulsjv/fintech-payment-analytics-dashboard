SELECT
	time_of_day,
	COUNT(*) AS total_transactions,
	SUM(isFraud) AS fraud_count,
	ROUND(SUM(isFraud) * 100.0 / COUNT(*), 4) AS fraud_rate_pct,
	ROUND(SUM(amount), 2) AS total_value,
	ROUND(AVG(amount), 2) AS avg_amount
FROM
	transactions_clean
GROUP BY
	time_of_day
ORDER BY
	fraud_rate_pct DESC;

