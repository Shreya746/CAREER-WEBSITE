<?php


// Create connection

function db_conn()
{
  $servername = "localhost";
$username = "root";
$password = "";
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
  exit;
}
return $conn;
echo "Connected successfully";
}
?>