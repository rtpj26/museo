<?php
	session_start(0);
	$_SESSION['SESSION_ID'] = -1;
	session_unset(0);
	session_destroy(0);
	header("location: ../../index.php");
?>