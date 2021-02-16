function insertApproverDetails(){
	var queryStr = "INSERT INTO \"public\".\"ApproverDetails\" (\"Approver_Name\",\"Approver_Email\",\"PassCode\") VALUES(?,?,?)";
	try{
		$s.query("dbTest", queryStr);
		$s.setString(1, "Approver_Name");
		$s.setString(2, "Approver_Email");
		$s.setString(3, "PassCode");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertApproverDetails();
