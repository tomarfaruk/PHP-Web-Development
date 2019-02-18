<?php

include("db.php");

// add data in cars table
if(isset($_POST['car_name'])) {
$car_name = $_POST['car_name'];
$query = "INSERT INTO cars(car_name) VALUES('$car_name') ";
$insert_car_name = mysqli_query($connection, $query);
    
	if(!$insert_car_name) {
		die("QUERY FAILED");
	}    
	header("Location: index.html");
}

?>