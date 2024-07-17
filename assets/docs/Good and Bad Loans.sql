/*
	Will return insights on the good and bad loans issued
	- Good Loans are the ones that are current or paid off
	- Bad Loans are the ones that have ot been repaid and are charged off
	- Good Loans make a profit for the bank
	- Bad Loans make a loss for the bank
*/

-- Good Loans Issued
-- 1. Good Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid'
                OR loan_status = 'Current'
                THEN id END) * 100.0) / COUNT(id) AS Good_loan_percentage
FROM bank_loan_data;

-- 2. Good Loan Applications
SELECT
	COUNT(id) AS Good_Loan_Applications
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- 3. Good Loan Loaned Amount
SELECT
	SUM(loan_amount) AS Good_Loan_Loaned_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- 4. Good Loan Amoount Repaid
SELECT
	SUM(total_payment) AS Good_Loan_Amount_Repaid
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Bad Loans Issued
-- 1. Bad Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off'
                THEN id END) * 100.0) / COUNT(id) AS Bad
FROM bank_loan_data;

-- 2. Bad Loan Applications
SELECT
	COUNT(id) AS Bad
FROM bank_loan_data
WHERE loan_status = 'Charged Off';

-- 3. Bad Loan Loaned Amount
SELECT
	SUM(loan_amount) AS Bad_Loan_Loaned_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off';

-- 4. Bad Loan Amoount Repaid
SELECT
	SUM(total_payment) AS Bad_Loan_Amount_Repaid
FROM bank_loan_data
WHERE loan_status = 'Charged Off'