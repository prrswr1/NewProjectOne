function selectAllApproverDetails(){
	var queryStr = "SELECT \"Approver_Name\",\"Approver_Email\",\"PassCode\" , count(*) OVER() AS full_count FROM \"public\".\"ApproverDetails\"";
	var queryStrWithLimit = "SELECT \"Approver_Name\",\"Approver_Email\",\"PassCode\" , count(*) OVER() AS full_count FROM \"public\".\"ApproverDetails\" LIMIT ? OFFSET ?";
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
selectAllApproverDetails();
