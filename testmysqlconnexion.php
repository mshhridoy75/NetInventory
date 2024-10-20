<?php
// Database settings
try {

   $db =new PDO('mysql:host=172.31.254.120;dbname=AMSConfig;charset=utf8', 'netinventory_browser', 'zF5Pp@4X7tZJjNO-');
}

catch (PDOException $exception) {
    echo "<h1>Caught PDO exception:</h1>";
    echo $exception->getMessage() . PHP_EOL;
    echo "<h1>PHP Info for troubleshooting</h1>";
    phpinfo();

}
echo "Connected successfully";
?>



