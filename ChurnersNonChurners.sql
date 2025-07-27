#This query returns the average age of churners vs. non-churners.

SELECT
  AVG(CASE WHEN Exited = 1 THEN Age ELSE NULL END) AS avg_age_churned,
  AVG(CASE WHEN Exited = 0 THEN Age ELSE NULL END) AS avg_age_notchurned
FROM
  `coherent-window-466113-k2.bank_churn.customers`;

#This query returns the average account balance of churners vs. non-churners.

SELECT
  AVG(CASE WHEN Exited = 1 THEN Balance ELSE NULL END) AS avg_balance_churned,
  AVG(CASE WHEN Exited = 0 THEN Balance ELSE NULL END) AS avg_balance_notchurned
FROM
  `coherent-window-466113-k2.bank_churn.customers`;

#This query returns, for churners and non-churners, the percentage of which are active members.

SELECT
  AVG(CASE WHEN Exited = 1 THEN IsActiveMember ELSE NULL END) * 100 AS pctg_active_churned,
  AVG(CASE WHEN Exited = 0 THEN IsActiveMember ELSE NULL END) * 100 AS pctg_active_notchurned
FROM
  `coherent-window-466113-k2.bank_churn.customers`;

#This query returns the percentage of customers who have churned for each gender.

SELECT
  100 * AVG (CASE WHEN Gender = "Male" THEN Exited ELSE NULL END) AS pctg_churned_male,
  100 * AVG (CASE WHEN Gender = "Female" THEN Exited ELSE NULL END) as pctg_churned_female
FROM 
  `coherent-window-466113-k2.bank_churn.customers`;

#This query returns the percentage of customers who have churned for each geography.

SELECT
  100 * AVG (CASE WHEN Geography = "France" THEN Exited ELSE NULL END) AS pctg_churned_France,
  100 * AVG (CASE WHEN Geography = "Spain" THEN Exited ELSE NULL END) AS pctg_churned_Spain,
  100 * AVG (CASE WHEN Geography = "Germany" THEN Exited ELSE NULL END) AS pctg_churned_Germany
FROM 
  `coherent-window-466113-k2.bank_churn.customers`;

