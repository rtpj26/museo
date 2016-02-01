<?php
	session_start(0);
	if($_SESSION['SESSION_ID'] <= 0) header('location: admin.php'); 
?>