-- Bank Customer Churn Analysis
-- This file contains SQL queries used for data exploration and analysis.
Note: Some queries were exploratory and not all were used in the PowerBI dashboard.

CREATE DATABASE Churnersdb;

--Total Count of customers 
SELECT COUNT (*) AS Customer_Count
from [Churners N]

-- 1. Displaying Age range experiencing most churn
SELECT [Customer_Age Range],
COUNT (*) AS Churn_Count
FROM [Churners N]
WHERE Attrition_Flag = 'Attrited Customer'
GROUP BY [Customer_Age Range]
ORDER BY Churn_Count DESC

--2. What Gender closed their credit card services more?
SELECT Gender,
COUNT(*) AS GenderChurn_Count
FROM [Churners N]
WHERE Attrition_Flag ='Attrited Customer'
GROUP BY Gender;

--Seeing distribution of existing and attrited customers by GENDER
SELECT
  Gender,
  COUNT(CASE WHEN Attrition_Flag = 'Attrited Customer' THEN 1 END) AS AttritedCount,
  COUNT(CASE WHEN Attrition_Flag = 'Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Gender
ORDER BY AttritedCount DESC;

--Distribution of Existing and Attrited Customers
SELECT
  SUM(CASE WHEN Attrition_Flag = 'Attrited Customer' THEN 1 ELSE 0 END) AS AttritedCount,
  SUM(CASE WHEN Attrition_Flag = 'Existing Customer' THEN 1 ELSE 0 END) AS ExistingCount
FROM [Churners N]

--3. Did depedent count influence churn?
SELECT Dependent_count,
COUNT (*) AS Churn_Count
FROM [Churners N]
WHERE Attrition_Flag ='Attrited Customer'
GROUP BY Dependent_count
ORDER BY Dependent_count DESC;

--5. Could low income be a factor influencing the churn?
SELECT Income_Category,
COUNT(*) AS Churn_Count
FROM [Churners N]
WHERE Attrition_Flag = 'Attrited Customer'
GROUP BY Income_Category
ORDER BY Churn_Count DESC;

--Comparison of Income Categories Between Existing and Attrited Customers
SELECT Income_Category,
COUNT(CASE WHEN Attrition_Flag = 'Attrited Customer' THEN 1 END) AS AttritedCount,
  COUNT(CASE WHEN Attrition_Flag = 'Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Income_Category
ORDER BY AttritedCount DESC;

--4. What education level has the  most attrited customers?
SELECT Education_Level,
COUNT(CASE WHEN Attrition_Flag = 'Attrited Customer' THEN 1 END) AS AttritedCount,
  COUNT(CASE WHEN Attrition_Flag = 'Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Education_Level
ORDER BY AttritedCount DESC;

--6. Did inactivity cause churn?
SELECT Months_Inactive_12_mon,
COUNT(CASE WHEN Attrition_flag = 'Attrited Customer' THEN 1 END) AS AttritedCount,
  COUNT(CASE WHEN Attrition_flag ='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
 GROUP BY Months_Inactive_12_mon
 ORDER BY Months_Inactive_12_mon DESC;

 -- 7.Comparison of Credit Limit Tiers Between Existing and Attrited Customers
 SELECT [Credit Limit_Tier],
 COUNT(CASE WHEN Attrition_flag ='Attrited Customer' THEN 1 END) AS AttritedCount,
 COUNT(CASE WHEN Attrition_flag ='Existing Customer' THEN 1 END) AS ExistingCount
 FROM [Churners N]
 GROUP BY [Credit Limit_Tier]
 ORDER BY AttritedCount DESC;

 SELECT [Credit_Limit],
 COUNT(CASE WHEN Attrition_flag ='Attrited Customer' THEN 1 END) AS AttritedCount,
 COUNT(CASE WHEN Attrition_flag ='Existing Customer' THEN 1 END) AS ExistingCount
 FROM [Churners N]
 GROUP BY [Credit_Limit]
 ORDER BY AttritedCount DESC;

 SELECT 
 COUNT (*) AS premiumcount
 FROM [Churners N]
 WHERE [Credit Limit_Tier] ='Premium'

 --8.Did frequent contacting of clients influence churn?
SELECT Contacts_Count_12_mon,
COUNT(CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
COUNT(CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Contacts_Count_12_mon
ORDER BY AttritedCount DESC;

--9. Did Average card utilization play a part in attrition?
SELECT Avg_Utilization_Ratio,
COUNT(CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
COUNT(CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Avg_Utilization_Ratio
ORDER BY AttritedCount DESC;

--10. How did total revollving balance affect churn?
SELECT Total_Revolving_Bal,
COUNT(CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
COUNT(CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Total_Revolving_Bal
ORDER BY AttritedCount DESC;

--11. How does available money to spend influence churn?
SELECT Avg_Open_To_Buy,
 COUNT (CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
 COUNT (CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Avg_Open_To_Buy
ORDER BY AttritedCount DESC;

--12. Did high total transaction amount play a part in churn?
SELECT Total_Trans_Amt,
 COUNT (CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
 COUNT (CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Total_Trans_Amt
ORDER BY AttritedCount DESC;

SELECT Card_Category,
 [Credit Limit_Tier],
 COUNT (CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
 COUNT (CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Card_Category, [Credit Limit_Tier]
ORDER BY AttritedCount DESC;

SELECT Total_Amt_Chng_Q4_Q1,
 COUNT (CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
 COUNT (CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Total_Amt_Chng_Q4_Q1
ORDER BY AttritedCount DESC;

SELECT Total_Relationship_Count,
 COUNT (CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
 COUNT (CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Total_Relationship_Count
ORDER BY AttritedCount DESC;

SELECT Marital_Status,
Gender,
  COUNT(CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
    COUNT (CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Marital_Status, Gender
ORDER BY AttritedCount DESC;

SELECT Marital_Status,
  COUNT(CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
    COUNT (CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Marital_Status
ORDER BY AttritedCount DESC;

SELECT Marital_Status,
Gender,
Income_Category,
  COUNT(CASE WHEN Attrition_flag='Attrited Customer' THEN 1 END) AS AttritedCount,
    COUNT (CASE WHEN Attrition_flag='Existing Customer' THEN 1 END) AS ExistingCount
FROM [Churners N]
GROUP BY Marital_Status, Gender, Income_Category
ORDER BY AttritedCount DESC;