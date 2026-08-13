SELECT COUNT(*) FROM customers;
-- Overall churn rate
SELECT 
    ROUND(AVG(Churn) * 100, 2) AS churn_rate_pct,
    COUNT(*) AS total_customers
FROM customers;

-- Churn rate by contract length
SELECT 
    Contract_Length,
    COUNT(*) AS customers,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate_pct
FROM customers
GROUP BY Contract_Length
ORDER BY churn_rate_pct DESC;

-- Churn rate by subscription type
SELECT 
    Subscription_Type,
    COUNT(*) AS customers,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate_pct
FROM customers
GROUP BY Subscription_Type
ORDER BY churn_rate_pct DESC;

-- Support_calls: churned vs retained
SELECT 
    Churn,
    ROUND(AVG(Support_Calls), 2) AS avg_support_calls,
    ROUND(AVG(Payment_Delay), 2) AS avg_payment_delay,
    ROUND(AVG(Tenure), 2) AS avg_tenure
FROM customers
GROUP BY Churn;