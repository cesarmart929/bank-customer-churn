#This query returns the average age of churners vs. non-churners.

SELECT
  AVG(CASE WHEN Exited = 1 THEN Age ELSE NULL END) AS avg_age_churned,
  AVG(CASE WHEN Exited = 0 THEN Age ELSE NULL END) as avg_age_notchurned
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

#This query returns the number of males and females and, for each, the number that have churned. The resulting figures can be used to calculate the percentages of males and females that have churned.

SELECT
 COUNTIF (Gender = "Male") AS num_males,
 COUNTIF (Gender = "Male" AND Exited = 1) AS num_churned_males,
 COUNTIF (Gender = "Female") AS num_females,
 COUNTIF (Gender = "Female" AND Exited = 1) AS num_churned_females,


FROM
`coherent-window-466113-k2.bank_churn.customers`;

#This query returns the number of French, Spanish, and German members and, for each, the number that have churned. The resulting figures can be used to calculate the percentages of French, Spanish, and German members that have churned.

SELECT
 COUNTIF (Geography = "France") AS num_France,
 COUNTIF (Geography = "France" AND Exited = 1) AS num_churned_France,
 COUNTIF (Geography = "Spain") AS num_Spain,
 COUNTIF (Geography = "Spain" AND Exited = 1) AS num_churned_Spain,
 COUNTIF (Geography = "Germany") AS num_Germany,
 COUNTIF (Geography = "Germany" AND Exited = 1) AS num_churned_Germany,
FROM
`coherent-window-466113-k2.bank_churn.customers`;

