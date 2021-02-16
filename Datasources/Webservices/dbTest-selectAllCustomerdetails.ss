function selectAllCustomerdetails(){
	var queryStr = "SELECT \"Name\",\"mobileno\",\"email\",\"DOB\",\"RequestedAmount\",\"Requestedterm\",\"Application_ID\",\"status\",\"ApplicationDate\",\"Attachments\" , count(*) OVER() AS full_count FROM \"public\".\"Customerdetails\"";
	var queryStrWithLimit = "SELECT \"Name\",\"mobileno\",\"email\",\"DOB\",\"RequestedAmount\",\"Requestedterm\",\"Application_ID\",\"status\",\"ApplicationDate\",\"Attachments\" , count(*) OVER() AS full_count FROM \"public\".\"Customerdetails\" LIMIT ? OFFSET ?";
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
selectAllCustomerdetails();
