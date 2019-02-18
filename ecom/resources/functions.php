<?php

require_once('db.php');

//set message
function set_message($msg){
	if ($msg) {
		$_SESSION['message'] = $msg;
	}
	else{
		$msg = "";
	}
}


//display message
function display_message(){
	if (isset($_SESSION['message'])) {
		echo $_SESSION['message'];
		unset($_SESSION['message']);
	}
}


//rediresction function
function redirect($location){
	header("Location: $location");
}

//mysqli_query function
function query($sql){
	global $connection;
	return mysqli_query($connection, $sql);
}

// quwry confirm function
function confirm($result){
	global $connection;
	if (!$result) {
		die('Query failed'. mysqli_error($connection));
	}
}

// injection escape
function escape_string($string){
	global $connection;
	return mysqli_real_escape_string($connection, $string);
}


function fetch_array($result){
	return mysqli_fetch_array($result);
}


/*************************front end function ********************************/


//get products
function get_products(){
	$query = query("select * from products");
	confirm($query);

	while ($row = fetch_array($query)) {
		$product_id = $row['product_id'];
		$product_title = $row['product_title'];
		$product_price = $row['product_price'];
		$product_descriptior = $row['product_descriptior'];
		$product_image = $row['product_image'];
		$product_category_id = $row['product_category_id'];

	      $product = <<<DELIMETER
	      <div class="col-sm-4 col-lg-4 col-md-4">
	        <div class="thumbnail">
	            <img src="http://placehold.it/320x150" alt="image load error">
	            <div class="caption">
	                <h4 class="pull-right">$ $product_price</h4>
	                <h4><a href="item.php?id=$product_id">$product_title</a>
	                </h4>
	                <p>See more snippets like this online store item at <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
	                <a class="btn btn-primary" target="_blank" href="cart.php?add=$product_id">Add to Card</a>
	            </div>
	            
		    </div>
		  </div>
DELIMETER;
		 echo $product;
	}
}



function get_products_in_shop_page(){
	$query = query("select * from products");
	confirm($query);

	while ($row = fetch_array($query)) {
		$product_id = $row['product_id'];
		$product_title = $row['product_title'];
		$product_price = $row['product_price'];
		$product_descriptior = $row['product_descriptior'];
		$product_image = $row['product_image'];
		$product_category_id = $row['product_category_id'];

	      $product = <<<DELIMETER
            <div class="col-md-3 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="$product_image" alt="image load error">
                <div class="caption">
                    <h3>$product_title</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                    <p>
                        <a href="#" class="btn btn-primary">Buy Now!</a> <a href="item.php?id=$product_id" class="btn btn-default">More Info</a>
                    </p>
                </div>
            </div>
        </div>
DELIMETER;

		 echo $product;
	}
}

function get_products_in_cat_page(){
	$query = query("select * from products where product_category_id = ".escape_string($_GET['id']) ."");
	confirm($query);

	while ($row = fetch_array($query)) {
		$product_id = $row['product_id'];
		$product_title = $row['product_title'];
		$product_price = $row['product_price'];
		$product_descriptior = $row['product_descriptior'];
		$product_image = $row['product_image'];
		$product_category_id = $row['product_category_id'];


	

	      $product = <<<DELIMETER
            <div class="col-md-3 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="$product_image" alt="image load error">
                <div class="caption">
                    <h3>$product_title</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                    <p>
                        <a href="#" class="btn btn-primary">Buy Now!</a> <a href="item.php?id=$product_id" class="btn btn-default">More Info</a>
                    </p>
                </div>
            </div>
        </div>
DELIMETER;

		 echo $product;

	}
}


///categories 
function get_categories(){
    $query = "select cat_id, cat_title from categories";
	$result = query($query);
	confirm($result);

	while ($row = fetch_array($result)) {
		$cat_id = $row['cat_id'];
		$cat_title = $row['cat_title'];
		echo $cat_title.'<br>';
	}
}


function add_category($title){
	global $connection;
	$username = escape_string($title);
	$query = "INSERT INTO categories(cat_title) values('$title')";
	$query = mysqli_query($connection, $query);
	
}


// login function
function login_user(){

	if (isset($_POST['submit'])) {
		$username = escape_string($_POST['username']);
		$password = escape_string($_POST['password']);

		$query = query("select * from users where username = '$username' and password = '$password' ");
		confirm($query);
		$row = fetch_array($query);
		
		if (mysqli_num_rows($query) < 1) {
			set_message("your username or password is wrong");
			redirect("login.php");
		}
		else{			
			$_SESSION['username'] = $row['username'];
			redirect("admin");
		}
	}
}




//send message
function send_message(){
	if (isset($_POST['submit'])) {
		$name 		= escape_string($_POST['name']);
		$subject 	= escape_string($_POST['subject']);
		$email 		= escape_string($_POST['email']);
		$message 	= escape_string($_POST['message']);

		$header = "From: {$name} {$email}";

		$result = mail($email, $subject, $message);
		if (!$result) {
			echo "error";
		}else{
			echo "SEND";
		}
	}
}



?>