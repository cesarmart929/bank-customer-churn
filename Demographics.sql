#This query returns the percentage of customers from each geography.

SELECT
  100 * SUM (CASE WHEN Geography = "France" THEN 1 ELSE 0 END) / COUNT (*) AS pctg_French,
  100 * SUM (CASE WHEN Geography = "Spain" THEN 1 ELSE 0 END) / COUNT (*) AS pctg_Spanish,
  100 * SUM (CASE WHEN Geography = "Germany" THEN 1 ELSE 0 END) / COUNT (*) AS pctg_German
FROM 
  `coherent-window-466113-k2.bank_churn.customers`;

#This query returns the percentage of customers who are male and the percentage who are female.

SELECT
  100 * SUM (CASE WHEN Gender = "Male" THEN 1 ELSE 0 END) / COUNT (*) AS pctg_male,
  100 * SUM (CASE WHEN Gender = "Female" THEN 1 ELSE 0 END) / COUNT (*) AS pctg_female
FROM 
  `coherent-window-466113-k2.bank_churn.customers`;

#This query returns the average age of customers.

SELECT
  AVG(Age) AS avg_age
FROM 
  `coherent-window-466113-k2.bank_churn.customers`;