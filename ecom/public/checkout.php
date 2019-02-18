<?php
require_once('../resources/config.php');
require_once('cart.php');
include(TEMPLATE_FRONT.DS.'header.php');
?>

    <!-- Page Content -->
    <div class="container">
<!-- /.row --> 
<div class="row">
      <h1>Checkout
        <small class="bg-danger"><?php display_message(); ?></small>
      </h1>
<form action="">
    <table class="table table-striped">
        <thead>
          <tr>
           <th>Product</th>
           <th>Price</th>
           <th>Quantity</th>
           <th>Sub-total</th>
     
          </tr>
        </thead>
        <tbody>
            <?php cart(); ?>
        </tbody>
    </table>
</form>



<!--  ***********CART TOTALS*************-->
            
<div class="col-xs-4 pull-right ">
<h2>Cart Totals</h2>

<table class="table table-bordered" cellspacing="0">
    <tr class="cart-subtotal">
    <th>Items:</th>
    <td><span class="amount"><?php echo $_SESSION['items_in_cart']; ?></span></td>
    </tr>
    <tr class="shipping">
    <th>Shipping and Handling</th>
    <td>Free Shipping</td>
    </tr>

    <tr class="order-total">
    <th>Order Total</th>
    <td><strong><span class="amount">$ <?php echo $_SESSION['total_cost']; ?></span></strong> </td>
    </tr>
</table>

</div><!-- CART TOTALS-->


 </div><!--Main Content-->

<?php include(TEMPLATE_FRONT.DS.'header.php'); ?>