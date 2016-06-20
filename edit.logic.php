<?php
	if ($_SERVER["REQUEST_METHOD"] == "GET"):
		$calender_ = NULL;
		if (isset($_GET['id'])):
			// Get Patient for id
			$db = new mysqli('localhost','root','','calender');
			$id = $db->escape_string($_GET["id"]);
			
			$query = "SELECT * from birthdays where id=$id";
			$result = $db->query($query);
		
			$calender_ = $result->fetch_assoc();		
		endif;
		
	elseif ($_SERVER["REQUEST_METHOD"] == "POST"):
		$db = new mysqli('localhost','root','','calender');
		
		// Prepare data for update
		$id = $db->escape_string($_POST["id"]);
		$Person = $db->escape_string($_POST["Person"]);
		$Month = $db->escape_string($_POST["Month_id"]);
		$Day = $db->escape_string($_POST["Day"]);
		$Year = $db->escape_string($_POST["Year"]);
		
		// Prepare query and execute
		$query = "UPDATE birthdays set Person='$Person', Month_id='$Month', Day='$Day', Year='$Year' where id=$id";
		$result = $db->query($query);
	
    // Tell the browser to go back to the index page.
    header("Location: ./");
    exit();
	endif;

?>