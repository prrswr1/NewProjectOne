function updateCustomerdetails(){
	var queryStr = "UPDATE \"public\".\"Customerdetails\" SET \"Name\"=?,\"mobileno\"=?,\"email\"=?,\"DOB\"=?,\"RequestedAmount\"=?,\"Requestedterm\"=?,\"Application_ID\"=?,\"status\"=?,\"ApplicationDate\"=?,\"Attachments\"=? WHERE \"Application_ID\"= ?";
	try{
		$s.query("dbTest", queryStr);
	$s.setString(1, "Name");
	$s.setLong(2, "mobileno");
	$s.setString(3, "email");
	$s.setDate(4, "DOB");
	$s.setInteger(5, "RequestedAmount");
	$s.setInteger(6, "Requestedterm");
	$s.setInteger(7, "Application_ID");
	$s.setString(8, "status");
	$s.setDate(9, "ApplicationDate");
	$s.setBytes(10, "Attachments");
	$s.setInteger(11, "Application_ID");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateCustomerdetails();
