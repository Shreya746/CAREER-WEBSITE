<?php
	session_start();
	if(!isset($_POST['submit'])){
		echo "Something wrong! Check again!";
		exit;
	}
	require_once "../functions/database_functions.php";
	$conn = db_connect();

	$email = trim($_POST['email']);
	$pass = trim($_POST['pass']);

	if($email == "" || $pass == ""){
		echo "email or Pass is empty!";
		exit;
	}

	$email = mysqli_real_escape_string($conn, $email);
	$pass = mysqli_real_escape_string($conn, $pass);
	$pass = sha1($pass);

	// get from db
	$query = "SELECT `email`, `pass` from `admin` where `email` = '{$email}' and `pass` ='{$pass}'";
	$result = mysqli_query($conn, $query);
	if($result->num_rows <= 0){
		$_SESSION['err_login'] = "Incorrect Useremail or Password";
		header("Location: ../User/userhome.php");
		exit;
	}
	if(isset($conn)) {mysqli_close($conn);}
	$_SESSION['admin'] = true;
	header("Location: adminhome.php");
?>