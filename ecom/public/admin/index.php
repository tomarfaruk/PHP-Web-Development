<?php require_once("../../resources/config.php"); ?>
<?php require_once(TEMPLATE_BACK.'/header.php'); ?>

<?php 
if (!isset($_SESSION['username'])) {
    redirect('../login.php');
    set_message($_SESSION['username']);
}

?>

        <div id="page-wrapper">
            <div class="container-fluid">
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard <small>Statistics Overview</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <?php echo $_SESSION['username']; ?>
                                <i class="fa fa-dashboard"></i> Dashboard
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

<?php 
    
    if (isset($_GET['orders'])) {
        include TEMPLATE_BACK.'/orders.php';
    }
    elseif (isset($_GET['products'])) {
        include TEMPLATE_BACK.'/products.php';
    }
    elseif (isset($_GET['add_product'])) {
        include TEMPLATE_BACK.'/add_product.php';
    }
    elseif (isset($_GET['categories'])) {
        include TEMPLATE_BACK.'/categories.php';
    }
    elseif (isset($_GET['users'])) {
        include TEMPLATE_BACK.'/users.php';
    }
    else{
        include TEMPLATE_BACK.'/admin_content.php';
    }

?>
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
<?php include TEMPLATE_BACK."/footer.php";