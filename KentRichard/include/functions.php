<?php
	function DB_Query($sql) {
		$ip = "localhost";
		$user = "root";
		$password = "";
		$dbName = "kent_richard";

		// Create connection
		$db = new mysqli($ip, $user, $password, $dbName);
		if ($db->connect_error) {
			die("Connection failed: " . $db->connect_error);
		}

		//Grab the data
		$result = $db->query($sql);

		//End session
		$db->close();

		//Return data
		return $result;
	}

	function DB_GetUsername($id) {
		$sql = "SELECT name FROM users WHERE id = $id";
		$result = DB_Query($sql);
		$name = "";
		if ($result) {
			$row = $result->fetch_assoc();
			$name = $row["name"];
		}

		return $name;
	}
?>