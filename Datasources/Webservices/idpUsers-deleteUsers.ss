function deleteUsers(){
	var queryStr = "DELETE FROM \"public\".\"users\"";
	try{
		$s.query("idpUsers", queryStr);
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteUsers();
