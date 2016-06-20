<?php
	if ($_SERVER["REQUEST_METHOD"] == "POST"):
		$db = new mysqli('localhost','root','','calender');
		
		// Prepare data for insertion
		$Person = $db->escape_string($_POST["Person"]);
		$Month = $db->escape_string($_POST["Month_id"]);
		$Day = $db->escape_string($_POST["Day"]);
		$Year = $db->escape_string($_POST["Year"]);
		
		// Prepare query and execute
		$query = "INSERT into birthdays (person, month_id, day, year) values ('$Person','$Month','$Day','$Year')";
		$result = $db->query($query);
	
    // Tell the browser to go back to the index page.
    header("Location: ./");
    exit();
	endif;

?>