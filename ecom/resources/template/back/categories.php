 <?php
if (isset($_POST['add_category'])) {
    $title = $_POST['title'];
    if (!empty($title)) {
        add_category($title);        
    }
}
 ?>

<h1 class="page-header">Product Categories</h1>

<div class="col-md-4">    
    <form action="" method="POST">    
        <div class="form-group">
            <label for="category-title">Title</label>
            <input type="text" name="title" class="form-control">
        </div>

        <div class="form-group">            
            <input type="submit" class="btn btn-primary" name="add_category" value="Add Category">
        </div>
    </form>
</div>

<div class="col-md-8">
    <table class="table">
        <thead>
            <tr>
                <th>Title</th>
            </tr>
        </thead>


        <tbody>
            <tr>
                <td><?php get_categories() ?></td>
            </tr>
        </tbody>

        </table>
</div>

