<?php
include 'db.php';

// creating the table rows

$query = "select id, car_name from cars";
$result = mysqli_query($connection, $query);

while ($row = mysqli_fetch_array($result)) {
	$car = $row['car_name'];
	$id = $row['id'];

	echo "<tr>";
	echo "<td><a href=''>$id</a></td>";
	echo "<td><a rel='$id' class='link-title' href='javascript: void(0)' >$car</a></td>";
	echo "</tr>";
}


?>

<script>

	// $('#action-container').hide();

	$('.link-title').on('click', function(){
		$('#action-container').show('');

		var id = $(this).attr('rel');
		$.post('process.php', {id: id}, function(data){
			$('#action-container').html(data);
		})
	})
</script>