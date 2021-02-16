function selectAllLoanDetails(){
	var queryStr = "SELECT \"Application_ID\",\"ApprovedTerm\",\"InterestRate\",\"Maturity_Date\",\"Loan_ID\",\"ApprovedAmount\",\"DisbursalDate\" , count(*) OVER() AS full_count FROM \"public\".\"LoanDetails\"";
	var queryStrWithLimit = "SELECT \"Application_ID\",\"ApprovedTerm\",\"InterestRate\",\"Maturity_Date\",\"Loan_ID\",\"ApprovedAmount\",\"DisbursalDate\" , count(*) OVER() AS full_count FROM \"public\".\"LoanDetails\" LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("dbTest", queryStrWithLimit);
		$s.setLong(1, "limit");
		$s.setLong(2, "offset");
		}else{
		$s.query("dbTest", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectAllLoanDetails();
