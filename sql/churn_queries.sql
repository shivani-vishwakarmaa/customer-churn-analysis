SELECT COUNT(*) FROM churn;


/* Churn Rate */
SELECT 
    Churn,
    COUNT(*) AS customers
FROM churn
GROUP BY Churn;


/*Churn by Contract*/
SELECT
    Contract,
    Churn,
    COUNT(*) AS customers
FROM churn
GROUP BY Contract, Churn;



/* Average Monthly Charges of Churn Customers*/
SELECT
    AVG(MonthlyCharges)
FROM churn
WHERE Churn = 'Yes';