/*
	Use SQL to analyse the data and return the Key Performance Indicators
	which are listed in the problem statement

*/

SELECT *
FROM bank_loan_data

-- 1. Total Loan Applications
SELECT
	COUNT(id) AS Total_Loan_Applications
FROM bank_loan_data;

-- 1a. Month to Date loan applications
SELECT
	COUNT(id) AS MTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- 1b. Previous Month to Date Loan Applications
SELECT
	COUNT(id) AS PMTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

-- 2. Total Loaned Amount
SELECT
	SUM(loan_amount) AS Total_Loaned_Amount
FROM bank_loan_data;

-- 2a. Month to Date Total Loaned Amount
SELECT
		SUM(loan_amount) AS MTD_Total_Loaned_Amount
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- 2b. Previous Month to Date Loaned Amount
SELECT
		SUM(loan_amount) AS PMTD_Total_Loaned_Amount
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

-- 3. Total Amount Repaid
SELECT
		SUM(total_payment) AS Total_Amount_Repaid
FROM bank_loan_data;

-- 3a. MTD Amount Repaid
SELECT
		SUM(total_payment) AS MTD_Total_Amount_Repaid
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- 3b. PMTD Amount Recieved
SELECT
		SUM(total_payment) AS PMTD_Total_Amount_Repaid
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

-- 4. Average Interest Rate
SELECT
	ROUND(AVG(int_rate)*100,2) AS Avg_Interest_Rate
FROM bank_loan_data;

-- 4a. Month to Date Average Interest Rate
SELECT
	ROUND(AVG(int_rate)*100,2) AS MTD_Avg_Interest_Rate
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- 4b. Previous Month to Date Average Interest Rate
SELECT
	ROUND(AVG(int_rate)*100,2) AS PMTD_Avg_Interest_Rate
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

-- 5. Average Debt-to-income Ratio (DTI)
SELECT
	ROUND(AVG(dti)*100,2) AS Avg_DTI
FROM bank_loan_data;

-- 5a. Month to Date Average Debt-to-income Ratio (DTI)
SELECT
	ROUND(AVG(dti)*100,2) AS MTD_Avg_DTI
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- 5b. Previous Month to Date Average Debt-to-income Ratio (DTI)
SELECT
	ROUND(AVG(dti)*100,2) AS PMTD_Avg_DTI
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

