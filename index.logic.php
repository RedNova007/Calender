<?php
	
	$db = new mysqli('localhost','root','','calender');

	$query = "SELECT birthdays.person, birthdays.day, birthdays.month_id, birthdays.year, month.id, month.month 
	FROM birthdays
	LEFT JOIN month 
	ON birthdays.month_id=month.id
	ORDER BY month_id, day";

	$result = $db->query($query);
	
	$calender = $result->fetch_all(MYSQLI_ASSOC);

	
	$currDay = null;
	$currMonth_id = null;
		
	
?>	