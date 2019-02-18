<?php
require_once('../resources/config.php'); 
include(TEMPLATE_FRONT.DS.'header.php');
?>

    <!-- Page Content -->
    <div class="container">
      <header>
            <h1 class="text-center">Login</h1>
            <h4 class="text-center bg-danger"><?php  display_message(); ?> </h4>
            
        <div class="col-sm-4 col-sm-offset-5">   
            <form class="" action="login.php" method="post" enctype="multipart/form-data">
                <div class="form-group"><label for="username">
                    username<input type="text" name="username" class="form-control"></label>
                </div>
                 <div class="form-group"><label for="password">
                    Password<input type="password" name="password" class="form-control"></label>
                </div>

                <div class="form-group">
                  <input type="submit" name="submit" class="btn btn-primary" >
                </div>
            </form>
        </div> 

      </header>
    </div>

<?php login_user(); ?>


    <!-- /.container -->
 <?php include(TEMPLATE_FRONT.DS.'footer.php');  ?>
