<?php
   Membership::SessionStart();
   
// This is a simplified example, which doesn't cover security of uploaded files. 
// This example just demonstrate the logic behind the process.

$files_path = dirname(__FILE__).'/img/uploads';

$move_to_path = $files_path.'/'.$_SESSION['org']['id'].'/'.$_SESSION['user']['id'];
mkdir($move_to_path.'/', 0, true);

copy($_FILES['file']['tmp_name'], $move_to_path.'/'.$_FILES['file']['name']);
					
$array = array(
	'filelink' => '/files/'.$_FILES['file']['name'],
	'filename' => $_FILES['file']['name']
);

echo stripslashes(json_encode($array));
	
?>