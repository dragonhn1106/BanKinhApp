<?php
	session_start();
	unset($_SESSION['username']);
	unset($_SESSION['id_tk']);
	unset($_SESSION['quyen']);
	unset($_SESSION['email']);
	unset($_SESSION['tenhienthi']);
	unset($_SESSION['phone']);
	unset($_SESSION['address']);
	header("Location: index.php"); 
?>