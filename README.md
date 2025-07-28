# Bank Customer Churn

 ## My name is Cesar Martinez, and I created this repository to showcase my first data analyst portfolio project. I downloaded a free public dataset from Maven Analytics, a data analytics learning provider, and completed the recommended analysis. The dataset, Bank Customer Churn, provides the age, gender, region, and several other fields for each of a bank's 10,000 customers. Though not explicitly stated, it is assumed that the bank in question is fictitious. I will answer four questions in turn--each provided by Maven.

  1. What attributes are more common among churners than non-churners? Can churn be predicted using the variables in the data? (Churners vs. Non-Churners)
  2. What do the overall demographics of the bank's customers look like? (Demographics)
  3. Is there a difference between German, French, and Spanish customers in terms of account behavior? (Behavior by Geography)
  4. What types of segments exist within the bank's customers? (Customer Segmentation)

## Churners vs. Non-Churners--

  When analyzing the characteristics of churners vs non-churners, several patterns emerge. Firstly, the average age of churners was about 8 years greater than the average age of non-churners. Second, on average, churner account balances were around €20,000 more than non-churners. Third, 55% of non-churners were active members of the bank while only 35% of churners were the same. Fourth, 1 in 4 females churned while only 16% of males churned. Fifth and finally, while only 16% of French and Spanish customers churned, a whopping 32% of German customers churned.
  
  Based on these patterns, there is much investigation to be done into the underlying causes for churning. Why is it that those who churn are likelier to be older than those who do not? Are customers with larger account balances churning due to the opportunity cost of potentially earning more in interest at other banks? Why are females churning so much, and what is happening in Germany that is causing double the amount of churning when compared to elsewhere?

## Demographics--

  Half of this bank's customers are French while Spanish and German customers make up a quarter of the total each. It is likely, then, that this is a French bank. Nearly 55% of the bank's customers are male. This figure coupled with the fact that 1 in 4 females are churners indicates that the bank is lagging in attracting and retaning female customers. The average age of the bank's customers is nearly 39 years.

## Behavior by Geography--

  Customers from Germany have average balances of nearly €120,000 while their French and Spanish counterparts only have average account balances of around €60,000. This pattern lends weight to our earlier hypothesis that churning could be driven by the opportunity cost of earning more interest at other banks on larger account balances. Germans are churning at twice the rate of their counterparts, and it is likely because they have nearly double the average account balance, representing a huge opportunity cost if other banks are offering higher interest rates. 

## Customer Segmentation--

  Based on earlier findings, we learned that Germans, on average, have significantly larger account balances than their French and Spanish counterparts. To further investigate this pattern, it would be useful to know whether this relationship holds even in the bank's younger customers. In fact, from the bank's under-30 customers, Germans are far more likely to have account balances of €90,000 or greater. 86% of under-30 Germans have account balances of €90,000 or greater while only 40% of their French and Spanish counterparts have the same, respectively.

  Another interesting pattern emerges when looking at under-30 customers by geography. Both French and Spanish customers age 30 or under have, on average, account balances of approxiamtely €59,000, yet Spanish customers from the same cohort are churning at nearly double the rate of their French counterparts. It remains to be seen what accounts for this difference when it has already been determined that the opportunity cost of more in interest on larger account balances cannot be a determining factor.

## Conclusion--

  Based on all of these findings, there are two big patterns that emerge. Individuals with larger account balances tend to churn more than those with smaller account balances, and females churn more than males. As previously stated, it is likely that individuals with larger account balances are moving their funds to other banks with higher interest rate offerings. As for the disparity in churning behavior between males and females, further investigation is warranted to determine underlying causes.


https://public.tableau.com/app/profile/cesar.martinez4942/viz/BankCustomerChurn_17537193049110/BankCustomerChurnDashboard (Tableau visualization)

https://mavenanalytics.io/data-playground?page=2&pageSize=5 (Dataset - 5th from the top entitled "Bank Customer Churn")
