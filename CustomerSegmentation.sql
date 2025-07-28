-- This query returns the percentage of customers who have churned in each age category.

SELECT
  100 * AVG (CASE WHEN Age <= 20 THEN Exited ELSE NULL END) AS pctg_churned_under_20,
  100 * AVG (CASE WHEN Age > 20 AND Age <= 30 THEN Exited ELSE NULL END) AS pctg_churned_btw_20and30,
  100 * AVG (CASE WHEN Age > 30 AND Age <= 40 THEN Exited ELSE NULL END) AS pctg_churned_btw_30and40,
  100 * AVG (CASE WHEN Age > 40 AND Age <= 50 THEN Exited ELSE NULL END) AS pctg_churned_btw_40and50,
  100 * AVG (CASE WHEN Age > 50 AND Age <= 60 THEN Exited ELSE NULL END) AS pctg_churned_btw_50and60,
  100 * AVG (CASE WHEN Age > 60 THEN Exited ELSE NULL END) AS pctg_churned_over_60
FROM
  `coherent-window-466113-k2.bank_churn.customers`;

-- This query returns the number of customers in each age category.

SELECT
  COUNTIF (Age <= 20) AS num_customers_under_20,
  COUNTIF (Age > 20 AND Age <= 30) AS num_customers_btw_20and30,
  COUNTIF (Age > 30 AND Age <= 40) AS num_customers_btw_30and40,
  COUNTIF (Age > 40 AND Age <= 50) AS num_customers_btw40and50,
  COUNTIF (Age > 50 AND Age <= 60) AS num_customers_btw50and60,
  COUNTIF (Age > 60) AS num_customers_over_60
FROM
  `coherent-window-466113-k2.bank_churn.customers`;

-- This query returns the average account balance of customers in each age category.

SELECT
  AVG (CASE WHEN Age <= 20 THEN Balance ELSE NULL END) AS avg_balance_under_20,
  AVG (CASE WHEN Age > 20 AND Age <= 30 THEN Balance ELSE NULL END) AS avg_balance_btw_20and30,
  AVG (CASE WHEN Age > 30 AND Age <= 40 THEN Balance ELSE NULL END) AS avg_balance_btw_30and40,
  AVG (CASE WHEN Age > 40 AND Age <= 50 THEN Balance ELSE NULL END) AS avg_balance_btw40and50,
  AVG (CASE WHEN Age > 50 AND Age <= 60 THEN Balance ELSE NULL END) AS avg_balance_btw50and60,
  AVG (CASE WHEN Age > 60 THEN Balance ELSE NULL END) AS avg_balance_over_60
FROM
  `coherent-window-466113-k2.bank_churn.customers`;

-- This query returns, for each geography, the number of customers, the number of customers age 30 or under, and the number of age 30 or under who have account balances of €90,000 or greater. The resulting figures can be used to calculate, for each geography, the percentage of customers age 30 or under who have account balances of €90,000 or greater.

SELECT
  COUNTIF (Geography = "France") AS num_French,
  COUNTIF (Geography = "France" AND Age <= 30) AS num_French_under30,
  COUNTIF (Geography = "France" AND Age <= 30 AND Balance >= 90000) AS num_French_under30_balanceover90k,
  COUNTIF (Geography = "Spain") AS num_Spanish,
  COUNTIF (Geography = "Spain" AND Age <= 30) AS num_Spanish_under30,
  COUNTIF (Geography = "Spain" AND Age <= 30 AND Balance >= 90000) AS num_Spanish_under30_balanceover90k,
  COUNTIF (Geography = "Germany") AS num_Germans,
  COUNTIF (Geography = "Germany" AND Age <= 30) AS num_Germans_under30,
  COUNTIF (Geography = "Germany" AND Age <= 30 AND Balance >= 90000) AS num_Germans_under30_balanceover90k
FROM
  `coherent-window-466113-k2.bank_churn.customers`

--This query returns, for each geography, the average account balance of customers age 30 or under.

SELECT
  AVG (CASE WHEN Geography = "France" AND Age <= 30 THEN Balance ELSE NULL END) AS avg_balance_French_under30,
  AVG (CASE WHEN Geography = "Spain" AND Age <= 30 THEN Balance ELSE NULL END) AS avg_balance_Spanish_under30,
  AVG (CASE WHEN Geography = "Germany" AND Age <= 30 THEN Balance ELSE NULL END) AS avg_balance_German_under30
FROM
  `coherent-window-466113-k2.bank_churn.customers`;

-- This query returns, for each geography, the percentage of customers age 30 or under who have churned.

SELECT
  100 * AVG (CASE WHEN Geography = "France" AND Age <= 30 THEN Exited ELSE NULL END) AS pctg_French_under30_churned,
  100 * AVG (CASE WHEN Geography = "Spain" AND Age <= 30 THEN Exited ELSE NULL END) AS pctg_Spanish_under30_churned,
  100 * AVG (CASE WHEN Geography = "Germany" AND Age <= 30 THEN Exited ELSE NULL END) AS pctg_German_under30_churned
FROM
  `coherent-window-466113-k2.bank_churn.customers`;