<?php
    require_once "index.logic.php";
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Verjaardagskalender</title>
        <link href="common/main.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>


<?php
foreach ($calender as $calender_) :

    if ($currMonth_id != $calender_ ['month']) {
                    $currMonth = $calender_['month_id'];
                    echo "<h1>" . $calender_['month'] . "</h1>";
                }
                if ($currDay != $calender_['day']) {
                    $currDay = $calender_['day'];
                    echo"<h2>" . $calender_['day'] . "</h2>";
                    echo $calender_['person'];
                } ?>

<?php
    endforeach;
?>
 

    <p><a href="create.php">+ Toevoegen</a></p>

	</body>
</html>