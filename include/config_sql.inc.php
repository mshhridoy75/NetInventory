<?php
// Database settings
function mysql_connect_AMSConfig() {
    try {
        // Change the DSN for localhost
        $db = new PDO('mysql:host=localhost;dbname=netinventoryresults;charset=utf8', 'root', ''); // Use '' for no password
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
        $db = null;
        echo 'ERREUR DB: ' . $e->getMessage();
    }
    return $db;
}
?>
