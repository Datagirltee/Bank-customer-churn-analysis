## Project Overview

Customer churn is one of the biggest challenges in banking, and this credit card dataset highlights the issue clearly.
## Business Questions
This project aimed to answer the following questions about bank customer churn:
1. What is the gender distribution of churn?  
2. Did high or low dependence count influence churn?  
3. Which education level influenced churn the most?  
4. Does low income influence churn?  
5. Did high or low inactivity cause churn?  
6. Which credit limit ranges influenced churn more / did credit limit amounts influence retention?  
7. How did customer interaction influence retention or churn?  
8. Did the customer's average card utilization rate influence churn?  
9. Could the customer's revolving balance cause churn?  
10. Did the customer's total transaction amount result in more churn or retention overall?  
11. Which demographic churned the most (single/married/divorced)?
## Key Insights
1. **Churn Concentration in Entry-Level Credit Limit Tier**  
   - The Entry-Level credit limit tier recorded the highest number of churned customers, while also having the largest population of existing customers. This indicates that although churn volume is partly driven by customer size, customers with lower credit limits are more prone to attrition.  
   **Implication:** Targeted retention strategies such as credit limit reviews and engagement incentives for entry-level customers could significantly reduce overall churn.
2. **High Contact Frequency and Churn Risk**  
   - Customers who were contacted six times within the year recorded a churn rate of 100%, with all customers in this group eventually attriting. This indicates a strong relationship between high contact frequency and customer dissatisfaction, suggesting that frequent interactions may reflect unresolved issues or escalating complaints rather than proactive engagement.  
   **Implication:** Customers requiring repeated contact should be treated as a high-risk segment, with early intervention and improved issue resolution to prevent inevitable churn.
3. **Card Inactivity and Churn**  
 - Customers with a zero average card utilization ratio recorded the highest churn count, indicating that complete lack of card usage is strongly associated with attrition. This suggests that customers who do not actively engage with their cards are more likely to discontinue the service due to low perceived value.  
   **Implication:** Early engagement strategies targeting inactive customers may help prevent churn by encouraging initial and sustained card usage.
4. **Churn by Marital Status, Gender, and Income**  
   - **Married Women:** Recorded the highest churn count among all gender and marital status groups, contributing significantly to overall customer attrition.  
   - **Income Influence:** Within this segment, customers earning less than $40,000 annually experienced the highest churn, suggesting that income level plays a significant role in churn behavior.  
   **Implication:** Retention strategies for married women should account for income sensitivity, with tailored offers or support aimed at lower-income customers.
5. **Customer Churn by Available Credit Tier**  
   - Customers with low available credit recorded the highest churn count (798 customers), indicating that customers operating close to their credit limit are more liable to churn, possibly due to financial strain or limited credit availability.
6. **Attrited Customers by Revolving Balance Range**  
   - Churn is concentrated among customers with zero to low revolving balances. Combined with low available credit trends, this suggests that limited credit flexibility and usage-related factors contribute to attrition.  
   **Implication:** Retention efforts should focus on engagement, not only resolving complaints. Early warning systems should flag declining or inactive usage, not just risky credit behavior.
7. **Card Churn Count by Credit Limit Tier**  
   - Churn is most pronounced among Blue Card holders within the entry-level credit limit tier, accounting for 1,227 churned customers. The consistently high churn observed among Blue Card holders, even when credit limit tiers are not considered, indicates that card category itself may be associated with higher attrition risk.  
   **Implication:** Customer churn in this portfolio is driven primarily by limited perceived value among entry-level customers, rather than extreme credit risk or high spending behavior.
### Dashboard Preview
**Churn Overview**
![Churn Overview](Images/churn-overview-page.png)
**Financial Drivers**
![Financial Drivers](Images/financial-drivers-page.png)
