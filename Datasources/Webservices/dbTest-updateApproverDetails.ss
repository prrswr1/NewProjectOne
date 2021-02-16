function updateApproverDetails(){
	var queryStr = "UPDATE \"public\".\"ApproverDetails\" SET \"Approver_Name\"=?,\"Approver_Email\"=?,\"PassCode\"=? WHERE \"Approver_Name\"= ?";
	try{
		$s.query("dbTest", queryStr);
	$s.setString(1, "Approver_Name");
	$s.setString(2, "Approver_Email");
	$s.setString(3, "PassCode");
	$s.setString(4, "Approver_Name");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateApproverDetails();
