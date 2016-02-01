<?php
	session_start(0);
	$_SESSION['SESSION_ID'] = -1;
	include "dbfunctions.php";
	print_r($_POST);
	if(isset($_POST['login_password']) && isset($_POST['login_username'])){
		$id = dbhelper::authenticateContentLogin($_POST['login_username'], $_POST['login_password']);
		if($id > 0){
			$_SESSION['SESSION_ID'] = $id;
			header('location: ../admin_home.php');
		}else{
			$_SESSION['SESSION_ID'] = -1;
			echo "<script>
					alert('Invalid Credentials. Please make sure that the username and password is correct and try again')
				  </script>";
			header('location: ../admin.php'); 
		}
	}
?>