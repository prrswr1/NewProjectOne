function selectUsers(){
	var queryStr = "SELECT \"id\",\"user_name\",\"first_name\",\"last_name\",\"password\",\"email\",\"phno\" , count(*) OVER() AS full_count FROM \"public\".\"users\"";
	var queryStrWithLimit = "SELECT \"id\",\"user_name\",\"first_name\",\"last_name\",\"password\",\"email\",\"phno\" , count(*) OVER() AS full_count FROM \"public\".\"users\" LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("idpUsers", queryStrWithLimit);
		$s.setLong(1, "limit");
		$s.setLong(2, "offset");
		}else{
		$s.query("idpUsers", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectUsers();
