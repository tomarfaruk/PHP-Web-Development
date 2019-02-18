<?php
ob_start();


$hostname = 'localhost'; // host name
$user = 'root';
$pass = '';
$db = 'ajax';

$connection = mysqli_connect($hostname, $user, $pass, $db);
if(!$connection){
	echo 'database connection error';
}

?>