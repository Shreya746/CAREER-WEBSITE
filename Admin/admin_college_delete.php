<?php
	$college_id = $_GET['college_id'];

	require_once "../functions/database_functions.php";
	$conn = db_connect();

	$query = "DELETE FROM colleges WHERE college_id = '$college_id'";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "delete data unsuccessfully " . mysqli_error($conn);
		exit;
	}
	header("Location: admin_college.php");
?>