function insertLoanDetails(){
	var queryStr = "INSERT INTO \"public\".\"LoanDetails\" (\"Application_ID\",\"ApprovedTerm\",\"InterestRate\",\"Maturity_Date\",\"ApprovedAmount\",\"DisbursalDate\") VALUES(?,?,?,?,?,?)";
	try{
		$s.query("dbTest", queryStr);
		$s.setInteger(1, "Application_ID");
		$s.setInteger(2, "ApprovedTerm");
		$s.setInteger(3, "InterestRate");
		$s.setString(4, "Maturity_Date");
		$s.setString(5, "ApprovedAmount");
		$s.setDate(6, "DisbursalDate");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertLoanDetails();
