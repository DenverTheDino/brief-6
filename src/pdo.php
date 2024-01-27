

<?php 
require("connect.php");

$dsn = 'mysql:host='.SERVER.';dbname='.BASE;

try {

    $pdo = new PDO($dsn, USER, PASSWORD, array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION)); 
    // Affichage (SELECT) : 
    
} catch (PDOException $e){
    echo"Echec de la connexion %s\n" .$e->getMessage();
    exit();

}

?>