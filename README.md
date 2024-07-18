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
