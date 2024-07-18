# BankLoanProject

![Dashboard](assets/images/SUMMARY.png)
![Dashboard](assets/images/OVERVIEW.png)
![Dashboard](assets/images/DETAILS.png)

# Objective

* Key objectives for this project

The bank aims to gain a deeper understanding of the loans they have issued. By conducting a comprehensive analysis of these loans, they seek to uncover valuable insights that will support more informed and strategic business decisions.

Ideal dashboard
The ideal dashboard should provide the relevant insights into the bank loans, which includes key performance indicators such as;

* Total Loan Applications: We need to calculate the total number of loan applications received during a specified period. Additionally, it is essential to monitor the Month-to-Date (MTD) Loan Applications and track changes Month-on-Month (MoM).

* Total Funded Amount: Understanding the total amount of funds disbursed as loans is crucial. We also want to keep an eye on the MTD Total Funded Amount and analyse the Month-on-Month (MoM) changes in this metric.

* Total Amount Received: Tracking the total amount received from borrowers is essential for assessing the bank's cash flow and loan repayment. We should analyse the Month-to-Date (MTD) Total Amount Received and observe the Month-on-Month (MoM) changes.

* Average Interest Rate: Calculating the average interest rate across all loans, MTD, and monitoring the Month-on-Month (MoM) variations in interest rates will provide insights into our lending portfolio's overall cost.

* Average Debt-to-Income Ratio (DTI): Evaluating the average DTI for our borrowers helps us gauge their financial health. We need to compute the average DTI for all loans, MTD, and track Month-on-Month (MoM) fluctuations.

Dashboard 1: SUMMARY

Good Loan v Bad Loan KPI’s

Good Loan:
* Good Loan Application Percentage
* Good Loan Applications
* Good Loan Funded Amount
* Good Loan Total Received Amount

Bad Loan
* Bad Loan Application Percentage
* Bad Loan Applications
* Bad Loan Funded Amount
* Bad Loan Total Received Amount

Loan Status Grid View
To gain a comprehensive overview of our lending operations and monitor the performance of loans, we aim to create a grid view report categorised by 'Loan Status.’ By providing insights into metrics such as 'Total Loan Applications,' 'Total Funded Amount,' 'Total Amount Received,' 'Month-to-Date (MTD) Funded Amount,' 'MTD Amount Received,' 'Average Interest Rate,' and 'Average Debt-to-Income Ratio (DTI),' this grid view will empower us to make data-driven decisions and assess the health of our loan portfolio.

Dashboard 2: OVERVIEW
CHARTS

* Monthly Trends by Issue Date (Line Chart): To identify seasonality and long-term trends in lending activities.

* Regional Analysis by State (Filled Map): To identify regions with significant lending activity and assess regional disparities.

* Loan Term Analysis (Donut Chart): To allow the client to understand the distribution of loans across various term lengths.

* Employment Length Analysis (Bar Chart): To show how lending metrics are distributed among borrowers with different employment lengths, helping us assess the impact of employment history on loan applications.

* Loan Purpose Breakdown (Bar Chart): To provide a visual breakdown of loan metrics based on the stated purposes of loans, aiding in the understanding of the primary reasons borrowers seek financing.

* Home Ownership Analysis (Tree Map): For a hierarchical view of how home ownership impacts loan applications and disbursements.

* Metrics to be shown: 'Total Loan Applications,' 'Total Funded Amount,' and 'Total Amount Received.'

Dashboard 3: DETAILS

GRID

We need a comprehensive 'Details Dashboard' that provides a consolidated view of all the essential information within our loan data. This Details Dashboard aims to offer a holistic snapshot of key loan-related metrics and data points, enabling users to access critical information efficiently.

Objective:

The primary objective of the Details Dashboard is to provide a comprehensive and user-friendly interface for accessing vital loan data. It will serve as a one-stop solution for users seeking detailed insights into our loan portfolio, borrower profiles, and loan performance.

# Development
## Pseudocode
What is the approach you will use to create a solution from start to finish?

1. Get the data
2. Explore and Load the data into SQL
3. Test the data with SQL
4. Visualise the data in Power Bi
5. Generate the findings based on the insights
6. Write the documentation
7. Publish the data to GitHub

# SQL Queries
I used SQL to test the data and gather the Key Performance Indicators and trends that are needed for the dashboard. I have one example below, but the rest of the code can be found in the [SQL Query Document](assets/docs/Bank%20Loan%20Report%20Query%20Document.docx)

```sql
-- Total Loan Applications

  SELECT
		COUNT(id) AS Total_Loan_Applications
  FROM bank_loan_data;

-- MTD Loan Applications

SELECT
		COUNT(id) AS MTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- PMTD Loan Applications

SELECT
		COUNT(id) AS PMTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

````

After gathering all the Key Performance Indicators (KPIs) requested by the HR team using SQL, and ensuring the analysis was thorough, I proceeded to Power BI. I connected the database to Power BI and created several DAX measures to generate visualisations for the KPIs.

# DAX Measures
To derive meaningful insights from my data and effectively communicate these findings through visualisations, I created several measures in Power BI. Measures are powerful calculations that enable complex data analysis, allowing me to uncover trends, patterns, and key performance indicators. By leveraging these measures, I can build dynamic and interactive visualisations that provide a deeper understanding of the data. I had to create 28 DAX Measures, which can be found in the [DAX Measures Document](assets/docs/DAX%Measures.docx), I have included a few examples below:

### Total Loan Applications
```sql
Total Loan Applications = COUNT(bank_loan_data[id])
```
### Total Loaned Amount
```sql
Total Loaned Amount = SUM(bank_loan_data[loan_amount])
```
### Total Amount Repaid
```sql
Total Amount Repaid = SUM(bank_loan_data[total_payment])
```
# Visualisation
## Results
The dashboard looks as below:
![Dashboard](assets/images/SUMMARY.png)
![Dashboard](assets/images/OVERVIEW.png)
![Dashboard](assets/images/DETAILS.png)

# Discovery
## What did we learn?

## SUMMARY Dashboard
We discovered that:
1. The bank has given out 38.6K Loans
2. Loaned out $435.8M and Recieved $473.1M in repayments, meaning a profit of $37.3M
3. The average interest rate is 12%
4. The average DTI is 13.3%
5. 86.2% of loans are considered 'Good Loans', meaning they have either been fully paid or are currently being paid
6. The bank has loaned out $370.2M, and have recieved $435.8M, resulting in a profit of $65.6M for 'Good Loans'
7. 13.8% of loans are considered 'Bad Loans', meaning that the people have stopped paying or it has been charged off
8. The bank has loaned out $65.5M and have been repaid $37.3M, resulting in a $28.2M Loss for 'Bad Loans'

## OVERVIEW Dashboard
### Total Loan Applications
1. The number of loan applications Month on Month increases, with January and February being the lowest at 2.3 applications, and December being the highest with 4.3K applications
2. California (6,894), New York (3,701) and Texas (2,664) are the top three states
3. Idaho (6), Mississippi (19) and Tennessee (17) are the bottom three states
4. People employed for over 10 years are the banks highest customers, requestion 8.9K loans
5. Debt Consolidation is the most common reason for a loan, with 18,000 people getting a loan for it
6. Medical is the least common reason for a loan, with less than 1,000 people getting a loan for it
7. 36 Month Term for loan repayments is the most popular, with 73.2% of people opting for it
8. Home Renters are the most common people applying for a loan

### Total Loan Repaid
1. Month on Month the total amount repaid increased, with January being $28M repaid, and December being $58M
2. California, New York and Texas are the top three states in terms of amount repaid
3. Idaho, Mississippi and Tennessee are the bottom three states in terms of repayments
4. People employed for over 10 years have repaid $125M worth of loans
5. People who have a mortgage have repaid the most amount ($238.47M)

### Total Loaned Amount
1. Month on Month the total loaned amount increased, with January being $25M repaid, and December being $54M
2. California, New York and Texas are the top three states who apply for loans
3. Idaho, Mississippi and Tennessee are the bottom three states hwho apply for loans
4. People employed for over 10 years have asked for the most loans ($116M)
5. 230M was loaned for the purpose of debt conssolidation
6. $219.33M was loaned to people who have a mortgage

## Recommendations
### Bad Loans
Based on the analysis indicating that 13.8% of loans are considered 'Bad Loans' and the bank has suffered a significant financial loss due to these non-performing loans, here are some recommendations to the bank to mitigate future risks and improve financial health:

1. Enhanced Credit Assessment Procedures
* Recommendation: Strengthen the credit assessment process to better evaluate borrowers' creditworthiness. This could involve more stringent checks on credit scores, income verification, and employment stability.
* Implementation: Introduce additional layers of verification and leverage advanced analytics to predict the likelihood of loan default.
2. Risk-Based Pricing
* Recommendation: Implement risk-based pricing strategies where interest rates are adjusted according to the risk profile of the borrower.
* Implementation: Higher-risk borrowers would face higher interest rates, compensating the bank for the increased risk and potentially deterring high-risk borrowing.
3. Proactive Monitoring and Early Intervention
* Recommendation: Set up a system for early detection of potential loan defaults through regular monitoring of borrowers' financial health.
* Implementation: Use automated systems to flag early warning signs such as missed payments, and engage with borrowers early to discuss repayment options.

Implementing these recommendations could significantly reduce the number of 'bad loans' in the future, thereby helping the bank minimise financial losses and enhance its overall profitability.

### Bottom Three States (Loan Applications)
To increase loan applications from Idaho, Mississippi, and Tennessee, the following strategies could be implemented:

1. Targeted Marketing Campaigns
* Recommendation: Develop marketing campaigns specifically tailored to these states, highlighting the benefits and unique features of the bank's loan products.
* Implementation: Use local media channels, social media platforms, and community events to raise awareness and engage with potential borrowers.
2. Customised Loan Products
* Recommendation: Design loan products that cater to the specific needs and preferences of residents in these states.
* Implementation: Conduct market research to understand the unique financial needs and develop products such as agricultural loans, small business loans, or low-interest personal loans.
3. Incentives and Promotions
* Recommendation: Offer incentives such as lower interest rates, reduced fees, or cashback offers to attract new loan applicants.
* Implementation: Launch limited-time promotions and special offers targeted at residents of Idaho, Mississippi, and Tennessee.

Implementing these recommendatiosn could significantly increase the number of loan applications in these states, increasing the number of customers for the bank. 
