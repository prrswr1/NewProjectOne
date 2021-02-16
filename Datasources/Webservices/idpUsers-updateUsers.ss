function updateUsers(){
	var queryStr = "UPDATE \"public\".\"users\" SET \"id\"=?,\"user_name\"=?,\"first_name\"=?,\"last_name\"=?,\"password\"=?,\"email\"=?,\"phno\"=?";
	try{
		$s.query("idpUsers", queryStr);
	$s.setString(1, "id");
	$s.setString(2, "user_name");
	$s.setString(3, "first_name");
	$s.setString(4, "last_name");
	$s.setString(5, "password");
	$s.setString(6, "email");
	$s.setString(7, "phno");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateUsers();
