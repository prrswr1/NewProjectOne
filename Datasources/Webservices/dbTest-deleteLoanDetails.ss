function deleteLoanDetails(){
	var queryStr = "DELETE FROM \"public\".\"LoanDetails\" WHERE \"Loan_ID\"= ?";
	try{
		$s.query("dbTest", queryStr);
		$s.setString(1, "Loan_ID");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteLoanDetails();
