<?php
include 'db.php';


// view the update , delete , hide options
if (isset($_POST['id'])) {
	$id = mysqli_real_escape_string($connection, $_POST['id']);

	$query = "select id, car_name from cars where id = {$id}";
	$result = mysqli_query($connection, $query);

	while ($row = mysqli_fetch_array($result)) {
		$car = $row['car_name'];
		$id = $row['id'];

		echo "<input rel='$id' class='form-control input-text' type='text' value='$car'>";
		echo "<input class='btn btn-success update' href='' type='button' value='submit'>";
		echo "<input class='btn btn-danger delete' type='button' href='' value='Delete'>";
		echo "<input class='btn btn-close close' type='button' href='' value='close'>";
	}
}


// update function
if (isset($_POST['updatethis'])) {
	$id = mysqli_real_escape_string($connection, $_POST['id']);
	$title = mysqli_real_escape_string($connection, $_POST['title']);

	$query = "update cars set car_name = '$title' where id = $id";
	$result = mysqli_query($connection, $query);

	if (!$result) {
		echo "update failed";
	}
	else{
		echo "update done";
	}
	header("location: index.html");
}


// delete function
if (isset($_POST['deletethis'])) {
	$id = mysqli_real_escape_string($connection, $_POST['id']);

	$query = "delete from cars where id = $id";
	$result = mysqli_query($connection, $query);

	if (!$result) {
		echo "update failed";
	}
	else{
		echo "update done";
	}

}

?>





<script>
	$(document).ready(function(){
		var id, title;
		var updatethis = 'updatethis';
		var deletethis = 'deletethis';

		//input text collection
		$('.input-text').on('input', function(){
			id = $(this).attr('rel');
			title = $(this).val();
			
		});


		//update btn function
		$('.update').on('click', function(){
			$.post('process.php', {id: id, title: title, updatethis: updatethis}, function(data){
				$('.notification').text('Update Done');
			});
		});


		//delete btn function
		$('.delete').on('click', function(){

			id = $('.input-text').attr('rel');
			
			$.post('process.php', {id: id, deletethis: deletethis}, function(data){
				$('.notification').text('Delete Done');
				$('#action-container').hide();
			});
		});

		//close the functionality
		$('.close').on('click', function(){
			$('#action-container').hide();
			$('.notification').hide();
		});


	});

</script>
