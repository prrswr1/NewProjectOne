function updateLoanDetails(){
	var queryStr = "UPDATE \"public\".\"LoanDetails\" SET \"Application_ID\"=?,\"ApprovedTerm\"=?,\"InterestRate\"=?,\"Maturity_Date\"=?,\"Loan_ID\"=?,\"ApprovedAmount\"=?,\"DisbursalDate\"=? WHERE \"Loan_ID\"= ?";
	try{
		$s.query("dbTest", queryStr);
	$s.setInteger(1, "Application_ID");
	$s.setInteger(2, "ApprovedTerm");
	$s.setInteger(3, "InterestRate");
	$s.setString(4, "Maturity_Date");
	$s.setString(5, "Loan_ID");
	$s.setString(6, "ApprovedAmount");
	$s.setDate(7, "DisbursalDate");
	$s.setString(8, "Loan_ID");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateLoanDetails();
