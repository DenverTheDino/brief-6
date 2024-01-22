<?php $pdo = new PDO('mysql:host=localhost;dbname=fav', 'root', '', array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION)); 
// Affichage (SELECT) : 
$result = $pdo->query("SELECT * FROM favoris"); $favori = $result->fetch(PDO::FETCH_ASSOC);  
// echo "Bonjour je suis $employe[prenom] $employe[nom] du service $employe[service]<br>"; //-----------------------------------------------------------------
