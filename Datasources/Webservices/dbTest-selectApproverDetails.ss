function selectApproverDetails(){
	var queryStr = "SELECT \"Approver_Name\",\"Approver_Email\",\"PassCode\" , count(*) OVER() AS full_count FROM \"public\".\"ApproverDetails\" WHERE \"Approver_Name\"= ?";
	var queryStrWithLimit = "SELECT \"Approver_Name\",\"Approver_Email\",\"PassCode\" , count(*) OVER() AS full_count FROM \"public\".\"ApproverDetails\" WHERE \"Approver_Name\"= ? LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("dbTest", queryStrWithLimit);
		$s.setLong(2, "limit");
		$s.setLong(3, "offset");
		}else{
		$s.query("dbTest", queryStr);
		}
	$s.setString(1, "Approver_Name");
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectApproverDetails();
