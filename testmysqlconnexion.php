<?php
// Database settings
try {

   $db =new PDO('mysql:host=localhost;dbname=netinventoryresults;charset=utf8', 'root', '');
}

catch (PDOException $exception) {
    echo "<h1>Caught PDO exception:</h1>";
    echo $exception->getMessage() . PHP_EOL;
    echo "<h1>PHP Info for troubleshooting</h1>";
    phpinfo();

}
echo "Connected successfully";
?>



