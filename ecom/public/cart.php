<?php
require_once('../resources/config.php');

if (isset($_GET['add'])) {
	$id = escape_string($_GET['add']);

	$query = query("select * from products where product_id = {$id}");
	confirm($query);

	$row = fetch_array($query);
		$product_quantity = $row['product_quantity'];
		$product_title = $row['product_title'];
		$product_title = $row['product_title'];

		if ($product_quantity > $_SESSION['product_'.$id.""]) {
			$_SESSION['product_'.$id.""] += 1;
		}
		else{
		  set_message("we have only ".$product_quantity." ".$product_title." Available");
		}
	
	redirect('checkout.php');
	
}

// remove one item from card
if (isset($_GET['remove'])) {
	$id = $_GET['remove'];
	if ($_SESSION['product_'.$id.""] > 0){
		$_SESSION['product_'.$id.""]--;
	}
	redirect('checkout.php');
}

//delete from card
if (isset($_GET['delete'])) {
	$id = $_GET['delete'];
	$_SESSION['product_'.$id.""] = '0';
	redirect('checkout.php');
}

$_SESSION['items_in_cart'] = 0;
$_SESSION['total_cost'] = 0;

//view the card items
function cart(){

foreach ($_SESSION as $key => $value) {
	if ($value > 0 && substr($key, 0, 8) =="product_") {
		$id = substr($key, 8, strlen($key));

		$query = query("select * from products where product_id = {$id}");
		confirm($query);

		$row = fetch_array($query);
		$product_price = $row['product_price'];
		$product_title = $row['product_title'];
		$total_in_cart = $_SESSION[$key];
		$sub_total = $total_in_cart * $product_price;
		$_SESSION['items_in_cart'] = $total_in_cart + $_SESSION['items_in_cart'];
		$_SESSION['total_cost'] = $_SESSION['total_cost'] + $sub_total;
	
		$product = <<<DELIMETER
		<tr>
            <td>{$product_title}</td>
            <td>$ {$product_price}</td>
            <td>$total_in_cart</td>
            <td>$ $sub_total</td>
            <td><a class='btn btn-warning' href="cart.php?remove={$row['product_id']}"><span class='glyphicon glyphicon-minus'></span></a>
             <a class='btn btn-success' href="cart.php?add={$row['product_id']}"><span class='glyphicon glyphicon-plus'></span></a>
              <a class='btn btn-danger' href="cart.php?delete={$row['product_id']}"><span class='glyphicon glyphicon-remove'></span></a>

             </td>              
        </tr>
DELIMETER;

		echo $product;


	}
}


}



?>