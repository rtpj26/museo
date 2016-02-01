<?php
	include_once "dbconnect.php";
	
	dbhelper::Start($db_obj); //coming from dbconnect db_obj
	
	class dbhelper{
		public static $pdo;
		public static $db_obj;
		
		public static function Start($db_obj) {
			self::$db_obj = $db_obj; //similar to this.db_obj = db_obj
			if (isset($db_obj)) { 
				if ($db_obj->isConnected()) {
					self::$pdo = $db_obj->get_db_connect();
				}
			}
		}
		public function authenticateContentLogin($username, $password) {
			$pdo_1 = self::$pdo->prepare("SELECT * FROM `t000_login` WHERE BINARY C000_USERNAME = :username AND BINARY C000_PASSWORD = :password");
			$pdo_1->execute(array(':username' => $username, ':password' => $password));
			$result = $pdo_1->fetch(PDO::FETCH_ASSOC);
			if($result)	return $result['C000_LOGIN_ID'];
			else return 0;
		}

	}
?>