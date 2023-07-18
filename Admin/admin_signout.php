<?php
	session_start();
	session_destroy();
	header("Location: /php try/home.html");
?>