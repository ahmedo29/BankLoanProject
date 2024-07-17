/*
	In these queries I will retrieve information about the loan status of all the loans
	in the database
*/

SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Repaid,
        SUM(loan_amount) AS Total_Loaned_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
FROM bank_loan_data
GROUP BY loan_status

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Repaid, 
	SUM(loan_amount) AS MTD_Total_Loaned_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status
