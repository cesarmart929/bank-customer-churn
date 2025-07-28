#This query returns the average account balance of customers from each geography.

SELECT
  AVG (CASE WHEN Geography = "France" THEN Balance ELSE NULL END) AS avg_balance_France,
  AVG (CASE WHEN Geography = "Spain" THEN Balance ELSE NULL END) AS avg_balance_Spain,
  AVG (CASE WHEN Geography = "Germany" THEN Balance ELSE NULL END) AS avg_balance_Germany
FROM 
  `coherent-window-466113-k2.bank_churn.customers`;

