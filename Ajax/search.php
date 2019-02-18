<?php

include 'db.php';

$search = $_POST['search'];

if (!empty($search)) {
	$query = "select car_name from cars where car_name like '$search%'";
	$result = mysqli_query($connection, $query);//query for searching 
	

	if ($result) {
		$total_cars = mysqli_num_rows($result);
		if ($total_cars > 0) {
			while ($row = mysqli_fetch_array($result)) {
				$car = $row['car_name'];
				echo "<p>{$car}</p>";
			}
		}else{
			echo "<p>Not found</p>";
		}		
	}
}