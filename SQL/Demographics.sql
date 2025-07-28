#This query returns the percentage of customers from each geography.

SELECT
  100 * COUNTIF (Geography = "France") / COUNT (*) AS pctg_French,
  100 * COUNTIF (Geography = "Spain") / COUNT (*) AS pctg_Spanish,
  100 * COUNTIF (Geography = "Germany") / COUNT (*) AS pctg_German
FROM 
  `coherent-window-466113-k2.bank_churn.customers`;

#This query returns the percentage of customers who are male and the percentage who are female.

SELECT
  100 * COUNTIF (Gender = "Male") / COUNT (*) AS pctg_male,
  100 * COUNTIF (Gender = "Female") / COUNT (*) AS pctg_female
FROM
  `coherent-window-466113-k2.bank_churn.customers`;

#This query returns the average age of all customers.

SELECT
  AVG(Age) AS avg_age
FROM 
  `coherent-window-466113-k2.bank_churn.customers`;
