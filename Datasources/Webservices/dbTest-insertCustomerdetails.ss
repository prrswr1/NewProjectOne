function insertCustomerdetails(){
	var queryStr = "INSERT INTO \"public\".\"Customerdetails\" (\"Name\",\"mobileno\",\"email\",\"DOB\",\"RequestedAmount\",\"Requestedterm\",\"status\",\"ApplicationDate\",\"Attachments\") VALUES(?,?,?,?,?,?,?,?,?)";
	try{
		$s.query("dbTest", queryStr);
		$s.setString(1, "Name");
		$s.setLong(2, "mobileno");
		$s.setString(3, "email");
		$s.setDate(4, "DOB");
		$s.setInteger(5, "RequestedAmount");
		$s.setInteger(6, "Requestedterm");
		$s.setString(7, "status");
		$s.setDate(8, "ApplicationDate");
		$s.setBytes(9, "Attachments");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertCustomerdetails();
