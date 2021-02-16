function deleteApproverDetails(){
	var queryStr = "DELETE FROM \"public\".\"ApproverDetails\" WHERE \"Approver_Name\"= ?";
	try{
		$s.query("dbTest", queryStr);
		$s.setString(1, "Approver_Name");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteApproverDetails();
