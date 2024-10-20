<?php
// Database settings
function mysql_connect_AMSConfig() {
try {
 
  $db =new PDO('mysql:host=172.31.254.120;dbname=AMSConfig;charset=utf8', 'netinventory_browser', 'zF5Pp@4X7tZJjNO-');
}
	catch(PDOException $e) {
		$db = null;
		echo 'ERREUR DB: ' . $e->getMessage();
	}
	return $db;
}
?>
